import 'package:flutter/material.dart';
import 'package:morango_app/Screens/Mix_Screen.dart';
import 'package:morango_app/Screens/signin_screen.dart';
import 'package:morango_app/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[

        Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(255, 144, 144, 1),
            title:Image.asset("images/morango.appbar.png", height: 50, width: 119),
            centerTitle: true,
            actions: [
              IconButton(icon: Icon(Icons.search,color: Colors.white,size: 28,), onPressed: (){}), //botão de pesquisa
            ],
          ),//appbar com botão de pesquisa

          body:// não sei como faz para chamar outras telas !se granta icaro!
          MixScreen(), //chama a tela mix
          drawer: CustomDrawer(), //drawer

        ),
      ],
    );
  }
}
