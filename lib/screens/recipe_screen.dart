import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';

class RecipeScreen extends StatelessWidget {
  @override
  Widget _RecipeBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(255, 144, 144, 1),
      title: Text(
        "Bolo de chocolate simples",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 22, fontFamily: 'Pacifico', color: Colors.white),
      ),
      centerTitle: true,
      leading: Builder(builder: (context) {
        return IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            });
      }),
    );
  }

  Widget _Divider() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 7),
        child: Image.asset('images/linha_preta.png'));
  }

  Widget _Ingredients(String heading, String text) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
          child: Text(
            "$heading",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: 'DoppioOne'),
          ),
        ), //Cabeçalho
        Container(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Text(
            "$text",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'DoppioOne'),
          ),
        ), //Texto
      ],
    );
  }

  Widget _PrepStep(String text, int n) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
      child: Text.rich(
        TextSpan(
            children: [
              TextSpan(
                  text: "$text",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'DoppioOne'))
            ],
            text: "$n ",
            style: TextStyle(
                fontSize: 40,
                color: Color.fromRGBO(100, 36, 36, 1),
                fontFamily: 'DoppioOne')),
      ),
    );
  }

  Widget _PrepMode(String heading, String text) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
          child: Text(
            "$heading",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: 'DoppioOne'),
          ),
        ),
        _PrepStep("$text", 1),
      ],
    );
  }

  Widget _RatingStar() {
    return SizedBox(
      width: 50,
      height: 50,
      child: RaisedButton(
          onPressed: () {},
          color: Color.fromRGBO(255, 166, 166, 1),
          shape: CircleBorder(
              side: BorderSide(color: Color.fromRGBO(100, 36, 36, 1))),
          padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
          child: Icon(Icons.star_border,
              size: 50, color: Color.fromRGBO(100, 36, 36, 1))),
    );
    /*RaisedButton(
      onPressed: () {},
      color: Color.fromRGBO(255,166,166,1),
      shape: CircleBorder(
        side: BorderSide(color: Color.fromRGBO(100, 36, 36, 1))
      ),
      child:Icon(
        Icons.star_border,
        size: 30,
        color: Color.fromRGBO(100, 36, 36, 1)
      )
    );*/
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: _RecipeBar(),
        preferredSize: Size.fromHeight(50),
      ),
      backgroundColor: Color.fromRGBO(255, 166, 166, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/Bolo-de-Chocolate-Cremoso.jpg",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12, 5, 12, 12),
              child: Text(
                "Bolo de chocolate pode ser servido no café da manhã, lanche da tarde ou até como merenda das crianças na escola. Esta receita feita com achocolato é batida no liquidificador e assada no forno. A dica para fazer a cobertura penetrar na massa do bolo é fazer furinhos com o garfo antes de derramar a calda.",
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'DoppioOne'),
              ),
            ), //Descrição da receita
            _Divider(),
            _Ingredients("Ingredientes - Massa",
                " • 1 xícara de chá de leite\n • 1 xícara de chá de óleo de soja\n • 2 unidades de ovo\n • 2 xícaras de chá de farinha de trigo\n • 1 xícara de chá de achocolatado em pó\n • 1 xícara de chá de açúcar\n • 1 colheres de sopa de fermento químico em pó"),
            _Divider(),
            _Ingredients("Ingredientes - Cobertura",
                " • 2 colheres de sopa de manteiga\n • 3 colheres de sopa de achocolatado em pó\n • 3 colheres de sopa de açúcar\n • 5 colheres de sopa de leite"),
            _Divider(),
            _PrepMode("Modo de Preparo - Massa",
                "Coloque os líquidos no liquidificador e bata até misturar bem."),
            _PrepStep(
                "Coloque os outros ingredientes, sendo o fermento o último.",
                2),
            _PrepStep(
                "Leve para assar em forno médio, numa forma untada e enfarinhada.",
                3),
            _Divider(),
            Container(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
              child: Text(
                "Assista um vídeo ensinando a preparar essa receita",
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'Roboto'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 45),
              child: Placeholder(
                fallbackWidth: 375,
                fallbackHeight: 240,
                color: Colors.white,
              ),
            ),
            Container(
              width: 332,
              height: 35,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 144, 144, 1),
                borderRadius: BorderRadius.all(Radius.circular(1.0)),
              ),
              child: Text(
                "Deixe sua avaliação!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: 'Roboto'),
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _RatingStar(),
                    _RatingStar(),
                    _RatingStar(),
                    _RatingStar(),
                    _RatingStar()
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
