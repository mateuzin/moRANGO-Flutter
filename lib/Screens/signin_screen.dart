import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 144, 144, 1),
          title:
              Image.asset("images/morango.appbar.png", height: 50, width: 119),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/SinginScreenBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset(
                  "images/morango.Singin.png",
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 25, 20, 7),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(110, 213, 161, 1),
                    labelText: "E-mail ou nome de usuário",
                    labelStyle: TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.23),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 14, 20, 8),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(110, 213, 161, 1),
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.23),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(38, 10, 20, 8),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.check_box_outline_blank_rounded,size: 20.30,color: Colors.white,),
                    Text("Mantenha-me conectado."
                        ,style: TextStyle(fontSize: 17.23,color: Colors.white)),
                  ],
                ),
              ),
              Container(
                child:
                  RaisedButton(
                    color: Color.fromRGBO(0,194,122,1),
                    child: Text("ENTRAR",style: TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),),
                    onPressed: (){},
                  ),
              ),
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
              Container(
                  padding: EdgeInsets.fromLTRB(140,20, 140,15),
                child: Row(
                  children: [
                    Image.asset("images/facebook.png"),
                    Text("     "),
                    Image.asset("images/google.png"),
                  ],
                ),
              ),
              Container(
                child: Text("Esqueceu sua senha?", style: TextStyle(
                  fontSize: 12,
                ),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 25, 20, 7),
                child:
                RaisedButton(
                    color: Color.fromRGBO(0,194,122,1),
                  child: Text("CADASTRE-SE GRATUITAMENTE",
                    style: TextStyle(fontSize: 17.23,color: Colors.white),
                  ),
                  onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color.fromRGBO(0,194,122,1),)
                    ),
                ),
              ),
            ],
          ),
        ));
  }
}
