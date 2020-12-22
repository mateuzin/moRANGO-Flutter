import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';
import 'package:morango_app/widgets/app_bar.dart';
import 'package:morango_app/widgets/custom_drawer.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _firstBox = "Pesquise receitas pelo nome";

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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 10.0),
                child: Text("Descubra novas receitas !!!",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Doppio One')),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(18, 6, 29, 14),
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(110, 213, 161, 1),
                  labelText: "Pesquise receitas pelo nome",
                  labelStyle: TextStyle(
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
            ),
            /*Container(
              padding: EdgeInsets.fromLTRB(0, 20, 10, 7),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 28.0,
                      onPressed: () {}),
                  filled: true,
                  fillColor: Color.fromRGBO(110, 213, 161, 1),
                  labelText: "Pesquise receitas pelo nome",
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.23),
                onTap: () {
                  setState(() {
                    _firstBox = "";
                  });
                },
              ),
            ),*/
            Container(
              padding: EdgeInsets.fromLTRB(18, 6, 29, 14),
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.fastfood_outlined,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(110, 213, 161, 1),
                  labelText: "Pesquise receitas pelos ingredientes",
                  labelStyle: TextStyle(
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
            ),
            /*Container(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 7),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: IconButton(
                      icon: Icon(Icons.fastfood_outlined),
                      iconSize: 28.0,
                      onPressed: () {}),
                  filled: true,
                  fillColor: Color.fromRGBO(110, 213, 161, 1),
                  labelText: "Pesquise receitas pelos ingredientes",
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.23),
                onTap: () {
                  setState(() {
                    _firstBox = "";
                  });
                },
              ),
            ),*/
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
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      "Ingrendiente1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text("  "),
                  ), //só um espacin
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    width: 114,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(110, 213, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      "Ingrendiente2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
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
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      "Ingrendiente3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text("  "),
                  ), //só um espacin
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    width: 114,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(110, 213, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      "Ingrendiente4",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container( // pesquisar
              padding: EdgeInsets.fromLTRB(20, 60, 20, 7),
              child: RaisedButton.icon(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 46,
                ),
                label: Text(
                  "Pesquisar",
                  style: TextStyle(fontSize: 17.23, color: Colors.white),
                ),
                color: Color.fromRGBO(110, 213, 161, 1),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(
                      color: Color.fromRGBO(0, 194, 122, 1),
                    )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255, 144, 144, 1),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.white, size: 35),
              backgroundColor: Color.fromRGBO(255, 144, 144, 1),
              title: Text("Home",
                  style: TextStyle(color: Colors.white, fontSize: 0))),
          BottomNavigationBarItem(
              icon: Icon(Mix.batedeira, color: Colors.white, size: 35),
              backgroundColor: Color.fromRGBO(255, 144, 144, 1),
              title: Text(
                "Mix",
                style: TextStyle(color: Colors.white, fontSize: 0),
              )),
        ],
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
