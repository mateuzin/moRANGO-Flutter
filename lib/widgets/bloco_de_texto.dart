import 'package:flutter/material.dart';

class BlocoDeTexto extends StatelessWidget {
  String get tituloDoBloco => _tituloDoBlocoController.text;
  String get conteudoDoBloco => _conteudoDoBlocoController.text;

  final _tituloDoBlocoController = TextEditingController();
  final _conteudoDoBlocoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormField(
                controller: _tituloDoBlocoController,
                style: TextStyle(fontSize: 30),
                decoration: InputDecoration(
                    hintText: 'Titulo do Bloco',
                    hintStyle: TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10)))),
            Divider(
              color: Colors.transparent,
              height: 5,
            ),
            TextFormField(
                controller: _conteudoDoBlocoController,
                maxLines: 6,
                decoration: InputDecoration(
                    hintText: 'Conteúdo do Bloco',
                    hintStyle: TextStyle(color: Color.fromRGBO(80, 73, 73, 1)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10)))),
            Divider(
              color: Colors.transparent,
              height: 20,
            )
          ],
        ));
  }
}
