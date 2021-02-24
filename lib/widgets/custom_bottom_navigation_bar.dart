import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(255, 144, 144, 1),
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
            backgroundColor: Color.fromRGBO(255, 144, 144, 1),
            // ignore: deprecated_member_use
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 0),
            )),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Mix.batedeira,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/mix');
              },
            ),
            backgroundColor: Color.fromRGBO(255, 144, 144, 1),
            // ignore: deprecated_member_use
            title: Text(
              "Mix",
              style: TextStyle(color: Colors.white, fontSize: 0),
            )),
      ],
    );
  }
}
