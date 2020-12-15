import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';

class MixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255,166,166,1),
        body:SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(26, 31, 188, 6),
                  child:
                  Text("Vamos preparar?",style: TextStyle(
                    color: Colors.white, fontSize: 23,fontWeight: FontWeight.bold,
                  ),),//Texto "VAMOS PRERAR",
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(18, 6, 29, 14),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Mix.batedeira,color: Colors.white,),
                      filled: true,
                      fillColor: Color.fromRGBO(110, 213, 161, 1),
                      labelText: "Coloque os ingredientes que possui!",
                      labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          color:  Color.fromRGBO(110, 213, 161, 1),
                        ),
                      ),
                    ),
                  ),
                ),//**pergunta de ingredientes
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
                ), //ingredientes 2
                Container(
                  padding: EdgeInsets.fromLTRB(25, 251, 29, 14),
                  child:
                  RaisedButton(
                    onPressed: () {},
                    color: Color.fromRGBO(110, 213, 161, 1),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Mix.mix,size: 100,color: Colors.white,),
                          Text("  Gerar \nReceitas",style: TextStyle(color: Colors.white,fontSize: 48),),
                        ],
                      ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Color.fromRGBO(110,213,161,1),)
                    ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255,144,144,1),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,size: 35,),
              backgroundColor: Color.fromRGBO(255,144,144,1),
              title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 0),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Mix.batedeira,color: Colors.white,size: 35,),
              backgroundColor: Color.fromRGBO(255,144,144,1),
              title: Text("Mix",style: TextStyle(color: Colors.white,fontSize: 0),)
          ),
        ],
      ),
    );
  }
}

