import 'package:flutter/material.dart';

class Forgot2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Divider(
              height: 45,
              color: Color.fromRGBO(255, 166, 166, 1),
            ),
            Text(
              'O EMAIL NÃO CHEGOU? \nVERIFIQUE O SPAM E A LIXEIRA, \nSE NECESSITAR DE REENVIO,\nAPERTE O BOTÃO ABAIXO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 20,
              color: Color.fromRGBO(255, 166, 166, 1),
            ),
            Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromRGBO(110, 213, 161, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'REENVIO',
                  textScaleFactor: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
