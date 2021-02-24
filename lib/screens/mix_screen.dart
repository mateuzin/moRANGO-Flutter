import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';
import 'package:morango_app/widgets/app_bar.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:morango_app/widgets/custom_drawer.dart';

class MixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        child: Appbar(),
        preferredSize: Size.fromHeight(50),
      ),
      backgroundColor: Color.fromRGBO(255, 166, 166, 1),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                //padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                padding: EdgeInsets.fromLTRB(20, 20, 188, 0),
                child: Text(
                  "Vamos preparar?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ), //Texto "VAMOS PRERAR",
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Mix.batedeira,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(110, 213, 161, 1),
                    hintText: "Coloque os ingredientes que possui!",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(110, 213, 161, 1),
                      ),
                    ),
                  ),
                ),
              ), //**pergunta de ingredientes

              /*Container(
                  padding: EdgeInsets.fromLTRB(25, 6, 29, 14),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 6),
                        width: 114,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(110, 213, 161, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child:Text("Ingrendiente1",textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        child: Text("  "),
                      ),//só um espacin
                      Container(
                        padding: EdgeInsets.only(top: 6),
                        width: 114,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(110, 213, 161, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child:Text("Ingrendiente1",textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                ),//Ingredientes 1
                Container(
                  padding: EdgeInsets.fromLTRB(25, 6, 29, 14),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 6),
                        width: 114,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(110, 213, 161, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child:Text("Ingrendiente2",textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        child: Text("  "),
                      ),//só um espacin
                      Container(
                        padding: EdgeInsets.only(top: 6),
                        width: 114,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(110, 213, 161, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child:Text("Ingrendiente2",textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                ), //ingredientes 2*/

              Container(
                margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/recipes');
                  },
                  color: Color.fromRGBO(110, 213, 161, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Mix.mix,
                        size: 90,
                        color: Colors.white,
                      ),
                      Text(
                        "  Gerar \nReceitas",
                        style: TextStyle(color: Colors.white, fontSize: 48),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(
                        color: Color.fromRGBO(110, 213, 161, 1),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
