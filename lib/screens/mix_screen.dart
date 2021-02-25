import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';
import 'package:morango_app/models/user_model.dart';
import 'package:morango_app/widgets/app_bar.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:morango_app/widgets/custom_drawer.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:after_layout/after_layout.dart';


class MixScreen extends StatefulWidget {
  @override
  _MixScreenState createState() => _MixScreenState();
}

class Ingrediente {
  String id;
  String name;

  Ingrediente({
    this.id,
    this.name,
  });
}

class _MixScreenState extends State<MixScreen>
    with AfterLayoutMixin<MixScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void afterFirstLayout(BuildContext context) {
    // Calling the same function "after layout" to resolve the issue.
    pegarIngredientes();
  }

  void pegarIngredientes() async {
    var documentos = await firestore.collection("ingredientes").get();
    List<QueryDocumentSnapshot> listaDeQuery = documentos.docs;
    for (QueryDocumentSnapshot doczin in listaDeQuery) {
      mapaDosIngredientes.add(doczin.data());
    }
    pegarItens();
  }

  List<Map<String, dynamic>> mapaDosIngredientes = [];

  void pegarItens() {
    List<Ingrediente> ingredientes = [];
    for (var map in mapaDosIngredientes) {
      Ingrediente ingrediente = Ingrediente();
      ingrediente.id = map['id'];
      ingrediente.name = map['nome'];
      ingredientes.add(ingrediente);
    }
    final _items = ingredientes
        .map((ingrediente) =>
            MultiSelectItem<Ingrediente>(ingrediente, ingrediente.name))
        .toList();
    mapaDosIngredientes = [];
    setState(() {
      itensParaColocar = _items;
    });
  }

  List<MultiSelectItem<dynamic>> itensParaColocar = [];
  List<dynamic> _ingredienteSelecionados = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        child: Appbar(),
        preferredSize: Size.fromHeight(50),
      ),
      backgroundColor: Color.fromRGBO(255, 166, 166, 1),
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model) {
          return SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Vamos preparar?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ), //Texto "VAMOS PRERAR",
                  ),
                  SizedBox(height: 40),
                  //################################################################################################
                  // Rounded blue MultiSelectDialogField
                  //################################################################################################
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color.fromRGBO(110, 213, 161, 1),
                      border: Border.all(
                        color: Color.fromRGBO(110, 213, 161, 1),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        MultiSelectBottomSheetField(
                          buttonIcon: Icon(Icons.arrow_downward,color: Colors.white,),
                          backgroundColor: Color.fromRGBO(255, 166, 166, 1),
                          unselectedColor: Colors.white,
                          cancelText: Text(
                            "CANCELAR",
                            style: TextStyle(color: Colors.white),
                          ),
                          confirmText: Text(
                            "OK",
                            style: TextStyle(color: Colors.white),
                          ),
                          initialChildSize: 0.4,
                          listType: MultiSelectListType.CHIP,
                          searchable: true,
                          buttonText: Text(
                            "Coloque os ingredientes que possui!",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          title: Text("Ingredientes",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          items: itensParaColocar,
                          onConfirm: (values) {
                           setState(() {
                             _ingredienteSelecionados = values;
                           });
                           print(_ingredienteSelecionados);
                          },
                          chipDisplay: MultiSelectChipDisplay(
                            textStyle: TextStyle(
                              color: Color.fromRGBO(255, 166, 166, 1),
                            ),
                            chipColor: Colors.white,
                            onTap: (value) {
                              setState(() {
                               print(value);
                              });
                            },
                          ),
                        ),
                        _ingredienteSelecionados == null ||
                                _ingredienteSelecionados.isEmpty
                            ? Container(
                                padding: EdgeInsets.all(10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Nenhum Ingrediente Selecionado",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ))
                            : Container(),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  //################################################################################################
                  // This MultiSelectBottomSheetField has no decoration, but is instead wrapped in a Container that has
                  // decoration applied. This allows the ChipDisplay to render inside the same Container.
                  //################################################################################################
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                    child: RaisedButton(
                      onPressed: () {
                         Navigator.of(context).pushNamed('/recipes');
                       //print(_ingredienteSelecionados);
                      },
                      color: Color.fromRGBO(110, 213, 161, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Mix.mix,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text(
                            "  Gerar \nReceitas",
                            style: TextStyle(color: Colors.white, fontSize: 48),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(
                            color: Color.fromRGBO(110, 213, 161, 1),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
