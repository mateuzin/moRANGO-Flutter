import 'package:flutter/material.dart';

class Forgot2 extends StatelessWidget {
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
                      height: 55,
                      color: Color.fromRGBO(255, 166, 166, 1),
                    ),
                    Text(
                      'UM E-MAIL FOI ENVIADO PARA VOCÊ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'COM AS INSTRUÇÕES NECESSÁRIAS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'PARA A REDEFINIÇÃO DA SUA SENHA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(height: 55, color: Color.fromRGBO(255, 166, 166, 1)),
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
                  Navigator.of(context).pushNamed('/');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
