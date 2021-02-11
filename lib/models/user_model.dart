import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class UserModel extends Model{

  FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  User user;
  Map<String,dynamic> userData = Map();

  bool isLoading = false;

  void signUp({@required Map<String,dynamic>userData,@required String pass }){
    isLoading = true;
    notifyListeners();

    _auth.createUserWithEmailAndPassword(
        email: userData["email"],
        password: pass
    ).then((userCredential)async{
      user = userCredential.user;

      await _saveUserData(userData);

      onSuccess();
      isLoading = false;
      notifyListeners();
    }).catchError((e){
      onFail();
      isLoading = false;
      notifyListeners();
    });
  }

  void signIn() async{
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 1));

    isLoading = false;
    notifyListeners();

  }

  void recoverPass(){

  }

  void signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    final User user = userCredential.user;
  }

  Future<UserCredential> signInWithFacebook() async {
    try {
      final AccessToken accessToken = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final FacebookAuthCredential credential = FacebookAuthProvider.credential(
        accessToken.token,
      );
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on FacebookAuthException catch (e) {
      // handle the FacebookAuthException
    } on FirebaseAuthException catch (e) {
      // handle the FirebaseAuthException
    } finally {}
    return null;
  }

  bool isLoggedIn(){
    return user != null;
  }




  Future<User> _saveUserData(Map<String,dynamic> userData)async{
    this.userData = userData;
    await FirebaseFirestore.instance.collection("users").doc(user.uid).set(userData);
  }

}