import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/widgets/app_bar.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:morango_app/widgets/custom_drawer.dart';
import 'package:morango_app/widgets/recipe_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        child: Appbar(),
        preferredSize: Size.fromHeight(50),
      ),
      backgroundColor: Color.fromRGBO(255, 166, 166, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(17, 20, 0, 15),
              child: Text(
                "Receitas da semana",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 30, color: Colors.white
                    //Color.fromARGB(222, 0, 0, 0), <- preto. Eu gostei do branco, se quiserem trocar
                    //se quiserem trocar fiquem a vontade -luiz
                    ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecipeCard(),
                  RecipeCard(),
                  RecipeCard(),
                  RecipeCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
