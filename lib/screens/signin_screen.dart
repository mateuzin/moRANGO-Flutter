//signin
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:morango_app/mix_icons.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:morango_app/models/user_model.dart';
import 'package:morango_app/screens/signup_screen.dart';
import 'package:scoped_model/scoped_model.dart';
import 'home_screen.dart';
import 'package:sign_button/sign_button.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();

  void _trocar() {//ver a senha
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 144, 144, 1),
          title:
          Image.asset("images/morango.appbar.png", height: 50, width: 119), //imagem do appbar possivelmente tirar**
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: ScopedModelDescendant<UserModel>(
            builder:(context,child, model){
              if(model.isLoading)
                return Center(child: CircularProgressIndicator(),);

              return Form(
                key: _formKey,
                child: ListView(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/SinginScreenBackground.jpg"), //imagem de fundo **tem q arrumar
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(//imagem do morango
                            child: Image.asset(
                              "images/morango.Singin.png",
                            ),
                          ),//imagem do morango

                          Container(//email e nome
                            padding: EdgeInsets.fromLTRB(20, 25, 20, 7),
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(110, 213, 161, 1),
                                hintText: "E-mail",
                                hintStyle: TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              style: TextStyle(fontSize: 15.23),
                              keyboardType: TextInputType.emailAddress,
                              validator: (text){
                                if(text.isEmpty|| !text.contains("@")) return "E-mail inválido!";},
                            ),
                          ),//email

                          Container(//senha
                            padding: EdgeInsets.fromLTRB(20, 14, 20, 8),
                            child: TextFormField(
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(110, 213, 161, 1),
                                hintText: "Senha",
                                hintStyle: TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                suffixIcon: IconButton(icon: Icon(Icons.visibility,color: Color.fromRGBO(80, 73, 73, 1)),
                                    onPressed: _trocar
                                ),
                              ),
                              style: TextStyle(fontSize: 15.23),
                              validator: (text){
                                if(text.isEmpty|| text.length < 6 ) return "Senha tem que conter no minimo 6 caracteres!";},
                            ),
                          ), //senha

                          FlatButton(//esqueceu a senha
                            padding: EdgeInsets.fromLTRB(220, 0, 0, 0) ,
                            onPressed: (){Navigator.of(context).pushNamed('/forgot1');},
                            child:
                            Text("Esqueci minha senha.", style: TextStyle(
                              fontSize: 12,
                            ),),
                          ), //esqueceu a senha

                          Container(//botão de manter conectado
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                            child: Row(
                              children: <Widget>[
                                IconButton(icon: Icon(Icons.check_box_outline_blank_rounded,size: 20.30,color: Colors.white,),onPressed: (){},),
                                Text("Mantenha-me conectado."
                                    ,style: TextStyle(fontSize: 17.23,color: Colors.white)),
                              ],
                            ),
                          ),//botão de manter conectado

                          Container( //botão de entrar
                            child:
                            RaisedButton(
                              color: Color.fromRGBO(0,194,122,1),
                              child: Text("ENTRAR",style: TextStyle(color: Colors.white),),
                              onPressed: (){if(_formKey.currentState.validate()){
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context)=>HomeScreen())
                                );}

                              model.signIn();
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Color.fromRGBO(0,194,122,1),)
                              ),
                            ),
                          ),//botão de entrar

                          Container(
                            padding: EdgeInsets.fromLTRB(38,18, 18, 5) ,
                            child: Row(
                              children: <Widget>[
                                Image.asset("images/linha_preta.png"),
                                Text(" OU ",
                                  style: TextStyle(fontSize: 14),),
                                Image.asset("images/linha_preta.png"),
                              ],
                            ),
                          ),

                          Container(
                            child: Text("Faça login com suas redes sociais", style: TextStyle(
                              fontSize: 12,
                            ),),
                          ),
                          Divider(color: Colors.transparent,),
                          Container ( //icones do facebook e google
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: Column(
                              children: [
                                SignInButton(
                                    buttonType: ButtonType.google,
                                    buttonSize: ButtonSize.medium//, large
                                    ,onPressed: () {
                                      model.signInWithGoogle();
                                    }),
                                Divider(color: Colors.transparent,),
                                SignInButton(
                                    buttonType: ButtonType.facebook,
                                    buttonSize: ButtonSize.medium//, large
                                    ,onPressed: () {
                                      model.signInWithFacebook();
                                }),
                              ],
                            ),
                          ),//icones facebook e google

                          Container(//botão de cadastro
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 70),
                            child:
                            SizedBox(
                              width: 250.0,
                              child: RaisedButton(
                                color: Color.fromRGBO(0,194,122,1),
                                child: Text("    CADASTRE-SE \n GRATUITAMENTE",
                                  style: TextStyle(fontSize: 17.23,color: Colors.white),
                                ),
                                onPressed: (){Navigator.of(context).pushNamed("/signup");},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Color.fromRGBO(0,194,122,1))
                                ),
                              ),
                            ),
                          ),//botão de cadastro
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        )
    );
  }

}
