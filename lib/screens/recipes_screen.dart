import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';
import 'package:morango_app/widgets/app_bar.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:morango_app/widgets/custom_drawer.dart';

class RecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        child: Appbar(),
        preferredSize: Size.fromHeight(50),
      ),
      backgroundColor: Color.fromRGBO(255,166,166,1),
      body:SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(26, 31, 25, 6),
                child:
                Text("Todas as suas receitas possíveis!!!",style: TextStyle(
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
                    labelText: "Coloque os filtros que deseja",
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
                      child:Text("Filtro 1",textAlign: TextAlign.center,style: TextStyle(
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
                      child:Text("Filtro 2",textAlign: TextAlign.center,style: TextStyle(
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
                      child:Text("Filtro 3",textAlign: TextAlign.center,style: TextStyle(
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
                      child:Text("Filtro 4",textAlign: TextAlign.center,style: TextStyle(
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
                      child:Text("Filtro 5",textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),
              ), //ingredientes 2
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Image.asset("images/Bolo-de-Chocolate-Cremoso.jpg",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Expanded(child: Text('Bolo de chocolate cremoso',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                              )),
                              SizedBox(width: 9,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("5.0 *",
                                    style: TextStyle(
                                        color: Color.fromARGB(153, 241, 105, 105),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text("40~50 *",
                                      style: TextStyle(
                                          color: Color.fromARGB(153, 241, 105, 105),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

