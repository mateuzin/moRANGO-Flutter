import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _firstBox = "Pesquise receitas pelo nome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 144, 144, 1),
        title: Image.asset("images/morango.appbar.png", height: 50, width: 119),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search), iconSize: 28.0, onPressed: () {})
        ],
      ),
      backgroundColor: Colors.pink[100],
      drawer: Drawer(
        child: ListView(),
      ),
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
            ),
            Container(
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
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 10.0, right: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(110, 213, 161, 1),
                        labelText: "Ingrediente 1",
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        icon: IconButton(
                          icon: Icon(Icons.delete),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 10.0, right: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(110, 213, 161, 1),
                        labelText: "Ingrediente 2",
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        icon: IconButton(
                          icon: Icon(Icons.delete),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(110, 213, 161, 1),
                        labelText: "Ingrediente 3",
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        icon: IconButton(
                          icon: Icon(Icons.delete),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(110, 213, 161, 1),
                        labelText: "Ingrediente 4",
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        icon: IconButton(
                          icon: Icon(Icons.delete),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 7),
              child: RaisedButton.icon(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: Text(
                  "Pesquisar",
                  style: TextStyle(fontSize: 17.23, color: Colors.white),
                ),
                color: Color.fromRGBO(110, 213, 161, 1),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen_outlined),
            label: 'Cozinhar',
          ),
        ],
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
