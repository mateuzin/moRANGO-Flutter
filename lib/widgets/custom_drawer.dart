import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:morango_app/Tiles/drawer_tile.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget _buildDrawerBack()=>Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(35),bottomRight:Radius.circular(35) ),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(203,0,0,65),
            Color.fromRGBO(203,0,0,65),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );

    return Drawer(
      child: Stack(
        children: <Widget> [
          _buildDrawerBack(),
          ListView(children: [
            Padding(padding: EdgeInsets.only(left: 32.0)),
            Container(
              height: 100,
              child: DrawerHeader(
                //parte de cima que tem o morango
                padding: EdgeInsets.fromLTRB(7.0, 10.0, 6.0 ,21.0),
                child: Image.asset("images/morango.drawer.png"), //morango
                decoration: BoxDecoration(
                  color: Color.fromRGBO(125,0,0,5),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 8.0),
              padding: EdgeInsets.fromLTRB(20.0, 16.0, 16.0, 8.0),
              child:
              Text("Olá,",style: TextStyle(
                color: Colors.white, fontSize: 18.0,fontWeight: FontWeight.bold,
              ),),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(bottom: 4.0),
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 8.0),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(125,0,0,5),radius: 40,
                    child: Icon(Icons.person,size: 70,color: Colors.white,),
                  ),
                ),//perfil
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 8.0),
                  child: Text("Fulano de tal", style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                ),
              ],
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: 22.0),
              child: DrawerTile(Icons.add_rounded,"Adicionar Receita"),
            ),//ADICIONAR RECEITA
            Container(
              padding: EdgeInsets.only(left: 22.0),
              child:   DrawerTile(Icons.person_outline,"Meu perfil"),
            ),//MEU PERFIL
            Container(
              padding: EdgeInsets.only(left: 22.0),
              child: DrawerTile(Icons.help_outlined,"Tutorial"),
            ),//TUTORIAL
            Container(
              padding: EdgeInsets.only(left: 22.0),
              child:  DrawerTile(Icons.exit_to_app,"Sair"),
            ),//SAIR
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left:5.0),
                  child: Image.asset("images/linha_preta.png",),
                ),
                Container(
                  padding: EdgeInsets.only(right:5.0),
                  child: Image.asset("images/linha_preta.png"),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20,15,20,1),
              child: Text("ALGUM TEXTO ALEATORIO QUE AINDA VAMOS PENSAR E POR ENQUANTO É SÓ ESSA MENSAGEM MESMO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5.0,5.0,5.0,0.0),
              child: Image.asset("images/morangoG.drawer.png"),
            ),
          ],
          ),
        ],
      ),
    );
  }
}
