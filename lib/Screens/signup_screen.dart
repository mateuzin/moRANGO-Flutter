import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 144, 144, 1),
          title: Image.asset("images/morango.appbar.png",
              height: 50, width: 119), //imagem do appbar possivelmente tirar**
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "images/SinginScreenBackground.jpg"), //imagem de fundo **tem q arrumar
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  //imagem do morango
                  child: Image.asset(
                    "images/morango.Singin.png",
                  ),
                ), //imagem do morango
                Container(
                  child: Text(
                    'Registro:',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  margin: EdgeInsets.only(right: 225, top: 30),
                ),
                Container(
                  // email
                  padding: EdgeInsets.fromLTRB(20, 16, 80, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(110, 213, 161, 1),
                      labelText: "E-mail",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                      suffixIcon: Icon(Icons.star,
                          size: 9, color: Color.fromRGBO(0, 0, 0, 6)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.23),
                  ),
                ),
                Container(
                  // usuário
                  padding: EdgeInsets.fromLTRB(20, 16, 80, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(110, 213, 161, 1),
                      labelText: "Usuário",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                      suffixIcon: Icon(Icons.star,
                          size: 9, color: Color.fromRGBO(0, 0, 0, 6)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.23),
                  ),
                ),
                Container(
                  // senha
                  padding: EdgeInsets.fromLTRB(20, 16, 80, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(110, 213, 161, 1),
                      labelText: "Senha",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                      suffixIcon: Icon(Icons.star,
                          size: 9, color: Color.fromRGBO(0, 0, 0, 6)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.23),
                  ),
                ), // senha
                Container(
                  // usuário
                  padding: EdgeInsets.fromLTRB(20, 16, 80, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(110, 213, 161, 1),
                      labelText: "Confirmar senha",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                      suffixIcon: Icon(Icons.star,
                          size: 9, color: Color.fromRGBO(0, 0, 0, 6)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.23),
                  ),
                ), // confirmar senha
                Container(
                  // usuário
                  padding: EdgeInsets.fromLTRB(20, 16, 160, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(110, 213, 161, 1),
                      labelText: "Sexo",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                      suffixIcon: Icon(Icons.keyboard_arrow_down_sharp,
                          size: 30, color: Color.fromRGBO(108, 97, 97, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.23),
                  ),
                ), // sexo
                Container(
                  // usuário
                  padding: EdgeInsets.fromLTRB(20, 16, 160, 7),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(110, 213, 161, 1),
                      labelText: "dd/mm/aaaa",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.23),
                  ),
                ), // dd/mm/aaaa
                Container(
                  //botão de manter conectado
                  padding: EdgeInsets.fromLTRB(38, 10, 20, 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank_rounded,
                        size: 23.30,
                        color: Colors.white,
                      ),
                      Text(" Aceito os termos de serviço",
                          style:
                              TextStyle(fontSize: 17.23, color: Colors.black)),
                    ],
                  ),
                ), // botão de aceitar termos
                Container(
                  //botão de entrar
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 50),
                  child: RaisedButton.icon(
                    color: Color.fromRGBO(0, 194, 122, 1),
                    label: Text(
                      "VAMOS LÁ",
                      style: TextStyle(color: Colors.white),
                    ),
                    elevation: 3.5,
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 50,
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Color.fromRGBO(0, 194, 122, 1),
                        )),
                  ),
                ), //botão de vamos lá
              ],
            ),
          ),
        ));
  }
}
