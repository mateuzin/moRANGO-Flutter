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
                  RecipeCard(nomeReceita: "Mouse de Limão",maxTempoPreparo: "20",minTempoPreparo: "15",urlFoto: "https://i.pinimg.com/564x/d2/87/09/d28709786f5e91d097fd3f4a1b47d481.jpg",),
                  RecipeCard(nomeReceita: "Bolo de Chocolate",maxTempoPreparo: "50",minTempoPreparo: '40',urlFoto: 'https://www.receitasdepesos.com.br/wp-content/uploads/2020/04/78979761_2587066418053784_2477827037482450944_n.jpg',),
                  RecipeCard(nomeReceita: "Limonada",maxTempoPreparo: "15",minTempoPreparo: "10",urlFoto: "https://i.pinimg.com/564x/32/9c/31/329c310f82d409bd40ad6f576b50f838.jpg",),
                  // RecipeCard(),
                ],
              ),
            ),
            Divider(color: Colors.transparent,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecipeCard(nomeReceita: "Brigadeiro",maxTempoPreparo: "30",minTempoPreparo: "35",urlFoto: "https://scontent.ffor15-1.fna.fbcdn.net/v/t1.0-9/90340653_105744171080115_4056315685851103232_o.jpg?_nc_cat=102&ccb=3&_nc_sid=09cbfe&_nc_ohc=ZoUyM_enC9UAX_L0TzE&_nc_ht=scontent.ffor15-1.fna&oh=d929b5a9599c91a4d2a2625b0279aeb9&oe=605C8284",),
                  RecipeCard(nomeReceita: "Brownie ",maxTempoPreparo: "40",minTempoPreparo: "35",urlFoto: "https://receitasdetudo.blog.br/wp-content/uploads/2020/07/receita-de-brownie-de-chocolate-cremoso.jpg",),
                  RecipeCard(nomeReceita: "Bolo de Limão",maxTempoPreparo: "45",minTempoPreparo: "35",urlFoto: "https://scontent.ffor15-1.fna.fbcdn.net/v/t31.0-8/26758149_983583181788676_509953373468109611_o.jpg?_nc_cat=100&ccb=3&_nc_sid=9267fe&_nc_ohc=gGnnxTilGQoAX-9CRMD&_nc_ht=scontent.ffor15-1.fna&oh=672d93bc71499da4ea4102e1195e03e4&oe=605BB441",),
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
