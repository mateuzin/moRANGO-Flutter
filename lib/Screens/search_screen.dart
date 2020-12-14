import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Image.asset("images/morango.appbar.png"),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      backgroundColor: Colors.pink[50],
      drawer: Drawer(
        child: ListView(),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 10.0),
              child: Text("Descubra novas receitas!!!", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            ),
          )
        ],
      ),
    );
  }
}
