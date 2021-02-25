import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:morango_app/widgets/bloco_de_texto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class AddRecipeScreen extends StatefulWidget {
  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

var uuid = Uuid();

class Documento {
  static String id = uuid.v4();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  Widget _addRecipeBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(255, 144, 144, 1),
      title: Text(
        "Título da receita",
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
              Navigator.of(context).pushReplacementNamed("/home");
            });
      }),
    );
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void pegarIngredientes() async {
    var documentos = await firestore.collection("ingredientes").get();
    List<QueryDocumentSnapshot> listaDeQuery = documentos.docs;
    for (QueryDocumentSnapshot doczin in listaDeQuery) {
      mapa.add(doczin.data());
    }
  }

  void adcionarReceita() async {
    docId = uuid.v4();
    await firestore.collection('receitas').doc(Documento.id).set({
      'titulo': _tituloController.text,
      'descricao': _descricaoDaReceitaController.text,
      'min': _minTempoDePreparoController.text,
      'max': _maxTempoDePreparoController.text,
      'date': DateTime.now(),
      'video':
          'https://www.youtube.com/watch?v=dGeEuyG_DIc&ab_channel=RickAstley-Topic',
    });

    for (var bloco in blocosDeTexto) {
      await firestore
          .collection('receitas')
          .doc(Documento.id)
          .collection('blocos')
          .add({
        'tituloBloco': bloco.tituloDoBloco,
        'conteudoBloco': bloco.conteudoDoBloco
      });
    }
    //firestore.collection('receitas').doc(docId).collection('ingredientes').add()
    //await firestore.collection('receitas').doc(Documento.id).collection('blocos').add({'tituloBloco': ''});
  }

  String docId;
  var tituloDaReceita = "Titulo";
  var editandoDescricao = false;
  var minTempoPreparo = 0;
  var maxTempoPreparo = 0;
  final _tituloController = TextEditingController();
  final _descricaoDaReceitaController = TextEditingController();
  final _minTempoDePreparoController = TextEditingController();
  final _maxTempoDePreparoController = TextEditingController();
  List<BlocoDeTexto> blocosDeTexto = [];
  List<String> listaDeIngredientes = [];
  List<Map<String, dynamic>> mapa = [];
  var ingredientezinho = '';

  // void transformarEmVariavel() {
  //   for (var map in mapa) {
  //     listaDeIngredientes.add(map['nome']);
  //     ingredientezinho = map['nome'];
  //   }
  //   print(listaDeIngredientes);
  //   print(ingredientezinho);
  // }

  void mudarEstadoEditandoDescricao() {
    if (editandoDescricao) {
      setState(() {
        editandoDescricao = false;
      });
    } else {
      setState(() {
        editandoDescricao = true;
      });
    }
  }

  void adcionarBlocoDeTexto() {
    setState(() {
      blocosDeTexto.add(new BlocoDeTexto());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _addRecipeBar(),
      backgroundColor: Color.fromRGBO(255, 166, 166, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 375,
              height: 283,
              child: RaisedButton(
                color: Color.fromRGBO(196, 196, 196, 1),
                child: Icon(Icons.add, size: 200, color: Colors.white),
                onPressed: () {},
              ),
            ), //caixinha de adicionar foto da receita
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: editandoDescricao
                  ? Container(
                      child: TextFormField(
                        controller: _descricaoDaReceitaController,
                        maxLines: 5,
                        decoration: InputDecoration(
                            suffixIcon: FlatButton(
                              child: Icon(Icons.close, color: Colors.red),
                              onPressed: () {
                                mudarEstadoEditandoDescricao();
                              },
                            ),
                            hintText: 'Descrição da receita',
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(80, 73, 73, 1),
                                fontSize: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  : FlatButton(
                      onPressed: () {
                        if (editandoDescricao) {
                          setState(() {
                            editandoDescricao = false;
                          });
                        } else {
                          setState(() {
                            editandoDescricao = true;
                          });
                        }
                      },
                      child: Text(
                        "Descrição (clique para editar)",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Roboto",
                            color: Color.fromRGBO(100, 36, 36, 1)
                            /*color: Colors.white*/ //caso fique melhor como branco
                            ),
                      ),
                    ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Text(
                      "Adicionar bloco de texto",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(100, 36, 36, 1)),
                    ),
                  ),
                  Flexible(
                    child: RaisedButton(
                      color: Colors.white,
                      shape:
                          CircleBorder(side: BorderSide(color: Colors.black)),
                      child: Icon(Icons.add, size: 25, color: Colors.black),
                      onPressed: () {
                        adcionarBlocoDeTexto();
                      },
                    ),
                  )
                ],
              ),
            ),

            ...blocosDeTexto,

            Container(
              padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
              child: Text(
                "Tempo de preparo",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(100, 36, 36, 1)),
              ),
            ), //tempo de preparo
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 120,
                    height: 45,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.top,
                      controller: _minTempoDePreparoController,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.access_time_outlined,
                              size: 20,
                              color: Color.fromRGBO(255, 144, 144, 1)),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.black))),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text(" ~ "),
                  SizedBox(
                    width: 120,
                    height: 45,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.top,
                      controller: _maxTempoDePreparoController,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.access_time_outlined,
                              size: 20,
                              color: Color.fromRGBO(255, 144, 144, 1)),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.black))),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
              child: Text(
                "Título da receita",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(100, 36, 36, 1)),
              ),
            ), //título da receita
            Container(
              padding: EdgeInsets.fromLTRB(15, 6, 15, 20),
              child: SizedBox(
                width: 350,
                height: 40,
                child: TextFormField(
                  controller: _tituloController,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
              child: Text(
                "Adcione os ingredientes que serão utilizados nessa receita para que nossos usuários possam encontrá-la",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Roboto",
                    color: Color.fromRGBO(0, 0, 0, 80)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 85),
              child: SizedBox(
                width: 175,
                height: 60,
                child: RaisedButton(
                  color: Color.fromRGBO(110, 213, 161, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    /* side: BorderSide(color: Colors.black)*/
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward,
                            size: 40, color: Colors.white),
                        Flexible(
                            child: Text(
                          "Enviar",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto",
                              fontSize: 20),
                        ))
                      ]),
                  onPressed: () {
                    adcionarReceita();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
