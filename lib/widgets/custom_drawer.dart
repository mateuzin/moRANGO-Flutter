import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:morango_app/models/user_model.dart';
import 'package:morango_app/tiles/drawer_tile.dart';
import 'package:scoped_model/scoped_model.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Color.fromRGBO(125, 0, 0, 5))],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35)),
            color: Color.fromRGBO(203, 0, 0, 65),
          ),
        );

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
      ),
      child: Drawer(
        child: Stack(
          children: <Widget>[
            _buildDrawerBack(),
            ScopedModelDescendant<UserModel>(
              builder: (context, child, model) {
                return ListView(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 32.0)),
                    Container(
                      height: 100,
                      child: DrawerHeader(
                        //parte de cima que tem o morango
                        padding: EdgeInsets.fromLTRB(7.0, 10.0, 6.0, 21.0),
                        child: Image.asset("images/morango.drawer.png"), //morango
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(125, 0, 0, 5),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 8.0),
                      padding: EdgeInsets.fromLTRB(22.0, 16.0, 16.0, 8.0),
                      child: Text(
                        "Olá,",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsetsDirectional.only(bottom: 4.0),
                          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 8.0),
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(125, 0, 0, 5),
                            radius: 40,
                            backgroundImage:
                            NetworkImage("${!model.isLoggedIn() ? "" : model.userData["photoURL"]}"),
                          ),
                        ), //perfil
                        Flexible(
                          child:
                          Container(
                            padding: EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 8.0),
                            child: Text(
                              "${!model.isLoggedIn() ? "" : model.userData["name"]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.only(left: 22.0),
                      child: DrawerTile(
                          Icons.add_rounded, "Adicionar Receita", '/addrecipe'),
                    ), //ADICIONAR RECEITA
                    Container(
                      padding: EdgeInsets.only(left: 22.0),
                      child: DrawerTile(
                          Icons.person_outline, "Meu perfil", '/recipe'),
                    ), //MEU PERFIL
                    Container(
                      padding: EdgeInsets.only(left: 22.0),
                      child: DrawerTile(
                          Icons.help_outlined, "Tutorial", '/tutorial'),
                    ), //TUTORIAL
                    Container(
                      //SAIR
                      padding: EdgeInsets.only(left: 22.0),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          model.signOut();
                          Navigator.of(context).pop();
                          Navigator.of(context).pushReplacementNamed('/signin');
                        },
                        child: Container(
                          height: 60.0,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.exit_to_app,
                                size: 32.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 32.0,
                              ),
                              Text(
                                "Sair",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), //SAIR
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Image.asset(
                            "images/linha_preta.png",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Image.asset("images/linha_preta.png"),
                        ),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      child: Image.asset("images/morangoG.drawer.png"),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
