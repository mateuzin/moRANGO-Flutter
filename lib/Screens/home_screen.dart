import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';
import 'package:morango_app/widgets/app_bar.dart';
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
      body: Container(),
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

