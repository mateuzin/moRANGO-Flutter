import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color.fromRGBO(255, 144, 144, 1),
        title:Image.asset("images/morango.appbar.png", height: 35, width: 119),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,size: 28,),
              onPressed: (){
            Navigator.of(context).pushNamed('/search');
          }), //botão de pesquisa
        ],
    );
  }
}
