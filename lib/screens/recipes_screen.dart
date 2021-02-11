import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';
import 'package:morango_app/widgets/app_bar.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:morango_app/widgets/custom_drawer.dart';
import 'package:morango_app/widgets/filter_card.dart';
import 'package:morango_app/widgets/recipe_card.dart';

class RecipesScreen extends StatelessWidget {
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
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(26, 31, 25, 6),
                child: Text(
                  "Todas as suas receitas possíveis!!!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ), //Texto "VAMOS PRERAR",
              ),
              Container(
                padding: EdgeInsets.fromLTRB(18, 6, 29, 14),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Mix.batedeira,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(110, 213, 161, 1),
                    labelText: "Coloque os filtros que deseja",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(110, 213, 161, 1),
                      ),
                    ),
                  ),
                ),
              ), //**pergunta de ingredientes
              Container(
                padding: EdgeInsets.fromLTRB(25, 6, 29, 14),
                child: Wrap(
                  children: [
                    FilterCard(),
                    FilterCard(),
                    FilterCard(),
                    FilterCard(),
                    FilterCard(),
                    FilterCard(),
                  ],
                ),
              ), //ingredientes 2
              Wrap(
                children: [
                  RecipeCard(),
                  RecipeCard(),
                  RecipeCard(),
                  RecipeCard(),
                  RecipeCard(),
                  RecipeCard(),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
