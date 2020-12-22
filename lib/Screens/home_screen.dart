import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/widgets/app_bar.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:morango_app/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        child: Appbar(),
        preferredSize: Size.fromHeight(50),),
      backgroundColor: Color.fromRGBO(255,166,166,1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(17, 40, 0, 25),
              child: Text("Receitas da semana",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 30,color: Color.fromARGB(222, 0, 0, 0)),
              ),
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text("Destaques",
                style: TextStyle(fontSize: 30,color: Color.fromARGB(222, 0, 0, 0)),
              ),
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


          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

