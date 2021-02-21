//signup

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:morango_app/models/user_model.dart';
import 'package:morango_app/screens/signin_screen.dart';
import 'package:scoped_model/scoped_model.dart';

import 'home_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = true;

  final _nameController = TextEditingController();
  final _passController = TextEditingController();
  final _emailController = TextEditingController();
  final _passConfirmController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _trocar() {//ver a senha
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 144, 144, 1),
          title: Image.asset("images/morango.appbar.png",
              height: 50, width: 119), //imagem do appbar possivelmente tirar**
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: ScopedModelDescendant<UserModel>(
          builder: (context, child, model) {
            if (model.isLoading)
              return Center(
                child: CircularProgressIndicator(),
              );
            return Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  Container(
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
                        Divider(color: Colors.transparent,),
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
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(110, 213, 161, 1),
                              hintText: "E-mail",
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(80, 73, 73, 1)),
                              suffixIcon: Icon(Icons.star,
                                  size: 9, color: Color.fromRGBO(0, 0, 0, 6)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            style: TextStyle(fontSize: 15.23),
                            keyboardType: TextInputType.emailAddress,
                            validator: (text) {
                              if (text.isEmpty || !text.contains("@"))
                                return "E-mail inválido!";
                            },
                          ),
                        ),

                        Container(
                          // nome
                          padding: EdgeInsets.fromLTRB(20, 16, 80, 7),
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(110, 213, 161, 1),
                              hintText: "Nome Completo",
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(80, 73, 73, 1)),
                              suffixIcon: Icon(Icons.star,
                                  size: 9, color: Color.fromRGBO(0, 0, 0, 6)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            style: TextStyle(fontSize: 15.23),
                            keyboardType: TextInputType.name,
                            validator: (text) {
                              if (text.isEmpty) return "Nome inválido!";
                            },
                          ),
                        ), //nome

                        Container(
                          // senha
                          padding: EdgeInsets.fromLTRB(20, 16, 80, 7),
                          child: TextFormField(
                            obscureText: _obscureText,
                            controller: _passController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(110, 213, 161, 1),
                              hintText: "Senha",
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(80, 73, 73, 1)),
                              suffixIcon: IconButton(icon: Icon(Icons.visibility,color: Color.fromRGBO(80, 73, 73, 1)),
                                  onPressed: _trocar
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            style: TextStyle(fontSize: 15.23),
                            validator: (text) {
                              if (text.isEmpty || text.length < 6)
                                return "Senha tem que conter no minimo 6 caracteres";
                            },
                          ),
                        ), // senha

                        Container(
                          // comfirmar senha
                          padding: EdgeInsets.fromLTRB(20, 16, 80, 7),
                          child: TextFormField(
                            obscureText: _obscureText,
                            controller: _passConfirmController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(110, 213, 161, 1),
                              hintText: "Confirmar senha",
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(80, 73, 73, 1)),
                              suffixIcon: IconButton(icon: Icon(Icons.visibility,color: Color.fromRGBO(80, 73, 73, 1)),
                                  onPressed: _trocar
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            style: TextStyle(fontSize: 15.23),
                            validator: (text) {
                              if (_passConfirmController.text!=_passController.text)
                                return "Senhas diferentes!";
                            },
                          ),
                        ), // confirmar senha

                        Container(
                          // Criar conta
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 165),
                          child: RaisedButton(
                            color: Color.fromRGBO(0, 194, 122, 1),
                            child: Text(
                              "Criar Conta",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            onPressed: () {
                              {if(_formKey.currentState.validate()){
                              Map<String, dynamic> userData = {
                              "name": _nameController.text,
                              "e-mail": _emailController.text,
                              };

                              model.signUp(
                              userData: userData,
                              email: _emailController.text,
                              pass: _passController.text,
                              onSuccess: _onSuccess,
                              onFail: _onFail,
                              );
                              }
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                  color: Color.fromRGBO(0, 194, 122, 1),
                                )),
                          ),
                        ), //botão de criar conta
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }

  void _onSuccess(){
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Usuário criado com sucesso!"),
          backgroundColor: Color.fromRGBO(0, 194, 122, 1),
          duration: Duration(seconds: 2),)
    );
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.of(context).pop();
    });
    /*Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=>SigninScreen()));*/
  }
  void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Falha ao criar Usuário!"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),)
    );
  }
}
