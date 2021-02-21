import 'package:flutter/material.dart';
import 'package:morango_app/widgets/app_bar.dart';

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 144, 144, 1),
        title: Image.asset("images/morango.appbar.png", height: 35, width: 119),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(255, 166, 166, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 86),
                      child: Image.asset(
                        'images/logo.png',
                        width: 357,
                        height: 105,
                        alignment: Alignment.center,
                      ),
                    ),
                    Divider(
                      height: 60,
                      color: Color.fromRGBO(255, 166, 166, 1),
                    ),
                    Text(
                      'POR FAVOR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'INSIRA O SEU EMAIL NO CAMPO ABAIXO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 55,
              color: Color.fromRGBO(255, 166, 166, 1),
            ),
            Container(
              width: 310,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Digite seu e-mail aqui!",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(110, 213, 161, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(110, 213, 161, 1),
                      )),
                  filled: true,
                  fillColor: Color.fromRGBO(110, 213, 161, 1),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              height: 75,
              color: Color.fromRGBO(255, 166, 166, 1),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.red[300],
                shape: CircleBorder(),
              ),
              child: IconButton(
                hoverColor: Colors.blue,
                iconSize: 35,
                icon: Icon(
                  Icons.arrow_back,
                  textDirection: TextDirection.rtl,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/forgot2');
                },
              ),
            ),
            Divider(
              height: 45,
              color: Color.fromRGBO(255, 166, 166, 1),
            ),
          ],
        ),
      ),
    );
  }
}
