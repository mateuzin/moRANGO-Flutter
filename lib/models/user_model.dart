import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class UserModel extends Model {
  FirebaseAuth _auth = FirebaseAuth.instance;

  final GoogleSignIn googleSignIn = GoogleSignIn();

  User user;

  Map<String, dynamic> userData = Map();
  Map<String, dynamic> ingData = Map();

  //String email;

  bool isLoading = false;


  @override

  //parte de cadastro e login

  void addListener(VoidCallback listener) {
    super.addListener(listener);

    _loadCurrentUser();
  }

  void signUp(
      {@required Map<String, dynamic> userData,
      String email,
      @required String pass,
      @required VoidCallback onSuccess,
      @required VoidCallback onFail}) {
    isLoading = true;
    notifyListeners();

    _auth.createUserWithEmailAndPassword(email: email, password: pass)
        .then((userCredential) async {
      user = userCredential.user;

      await _saveUserData(userData);

      onSuccess();
      isLoading = false;
      notifyListeners();
    }).catchError((e) {
      onFail();
      isLoading = false;
      notifyListeners();
    });
  }

  void signIn({@required email,@required String pass,@required VoidCallback onSuccess,@required VoidCallback onFail}) async {
    isLoading = true;
    notifyListeners();
    
    _auth.signInWithEmailAndPassword(email: email, password: pass)
        .then((userCredential) async {
      user = userCredential.user;

      await _loadCurrentUser();
      await _saveUserData(userData);

      onSuccess();
      isLoading = false;
      notifyListeners();
    }).catchError((e) {
      onFail();
      isLoading = false;
      notifyListeners();
    });
  }

  bool isLoggedIn() {
    return user != null;
  }

  void signOut() async{
    await _auth.signOut();

    userData = Map();
    user = null;
  }

  void recoverPass(String email) {
    _auth.sendPasswordResetEmail(email: email);
  }



  void signInWithGoogle({@required VoidCallback onSuccess,@required VoidCallback onFail}) async {
    try {
      final GoogleSignInAccount googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

      final UserCredential userCredential =
      await _auth.signInWithCredential(credential);

      user = userCredential.user;

      await updateUserData(user);
      await _loadCurrentUser();

      onSuccess();
      isLoading = false;
      notifyListeners();

    }on FirebaseAuthException catch (e){
      onFail();
      isLoading = false;
      notifyListeners();
    }

  }

  Future<UserCredential> signInWithFacebook({@required VoidCallback onSuccess,@required VoidCallback onFail}) async {
    try {
      final AccessToken accessToken = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final FacebookAuthCredential credential = FacebookAuthProvider.credential(
        accessToken.token,
      );
      // Once signed in, return the UserCredential


      final UserCredential userCredential =
      await _auth.signInWithCredential(credential);

      user = userCredential.user;

      await updateUserData(user);
      await _loadCurrentUser();

      onSuccess();
      isLoading = false;
      notifyListeners();
      
    } on FacebookAuthException catch (e) {
      onFail();
      isLoading = false;
      notifyListeners();
      // handle the FacebookAuthException
    } on FirebaseAuthException catch (e) {
      // handle the FirebaseAuthException
    } finally {}
    return null;
  }

  void updateUserData(User user)async{
    DocumentReference ref = FirebaseFirestore.instance.collection("users").doc(user.uid);

    return ref.set({
      "e-mail": user.email,
      "photoURL": user.photoURL,
      "name": user.displayName,
    }
    );
  }


  Future<User> _saveUserData(Map<String, dynamic> userData) async {
    this.userData = userData;
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .set(userData);
  }

  Future<Null> _loadCurrentUser() async{
    if(user == null)
      user = await _auth.currentUser;
    if(user != null){
      if(userData["naame"]== null){
        DocumentSnapshot docUser = await FirebaseFirestore.instance
            .collection("users")
            .doc(user.uid)
            .get();
        userData = docUser.data();
      }
    }
    notifyListeners();
  }

  Future<Null> _loadIngredientes() async{
    DocumentSnapshot docIngred = await FirebaseFirestore.instance
        .collection("Ingredientes")
        .doc()
        .get();

     ingData = docIngred.data();
  }

}
