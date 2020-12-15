import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.center, children: [
            Image.asset(
              'images/logo.png',
              height: 105,
              width: 357,
              filterQuality: FilterQuality.high,
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                '...',
                style: TextStyle(fontSize: 150, color: Colors.white),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
