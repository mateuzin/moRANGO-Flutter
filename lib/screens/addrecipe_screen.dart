import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/widgets/custom_bottom_navigation_bar.dart';

class AddRecipeScreen extends StatelessWidget {

  Widget _addRecipeBar(){
    return AppBar(
      backgroundColor: Color.fromRGBO(255, 144, 144, 1),
      title: Text(
        "Título da receita",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 22,
            fontFamily: 'Pacifico',
            color: Colors.white
        ),
      ),
      centerTitle: true,
      leading: Builder(
          builder: (context){
            return IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: (){}
            );
          }
      ),
    );
  }
  Widget _addItem(String item){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 40, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text("Adicionar $item",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(100, 36, 36, 1)
              ),
            ),
          ),
          SizedBox(
            child: RaisedButton(
              color: Colors.white,
              shape: CircleBorder(
                  side: BorderSide(color: Colors.black)
              ),
              child: Icon(Icons.add, size: 25, color: Colors.black),
              onPressed: (){},
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _addRecipeBar(),
      backgroundColor: Color.fromRGBO(255,166,166,1),
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
                onPressed: (){},
              ),
            ), //caixinha de adicionar foto da receita
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: Text(
                "Texto aqui.",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Roboto",
                  color: Color.fromRGBO(100, 36, 36, 1)
                  /*color: Colors.white*/ //caso fique melhor como branco
                ),
              ),
            ),
            _addItem("Título"),
            _addItem("Texto"),
            _addItem("Fotos"),
            _addItem("Vídeos"),
            Container(
              padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
              child: Text(
                "Tempo de preparo",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(100, 36, 36, 1)
                ),
              ),
            ),//tempo de preparo
            Container(
              padding: EdgeInsets.fromLTRB(10, 9, 180, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80,
                    height: 40,
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.access_time_outlined,
                          size: 20,
                          color: Color.fromRGBO(255, 144, 144, 1)
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.black
                          )
                        )
                      ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                  Text("~"),
                  SizedBox(
                    width: 80,
                    height: 40,
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.access_time_outlined,
                          size: 20,
                          color: Color.fromRGBO(255, 144, 144, 1)
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.black
                          )
                        )
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
              child: Text(
                "Título da receita",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(100, 36, 36, 1)
                ),
              ),
            ),//título da receita
            Container(
              padding: EdgeInsets.fromLTRB(15, 6, 15, 20),
              child: SizedBox(
                width: 350,
                height: 30,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color:  Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
              child: Text(
                "Adcione os ingredientes e as quantidades que serão usados nessa receita",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Roboto",
                  color: Color.fromRGBO(100, 36, 36, 1)
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 9, 10, 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 180,
                    height: 30,
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.black
                              )
                          )
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.black
                              )
                          )
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    height: 30,
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.black
                              )
                          )
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(120, 0, 120, 100),
              child: SizedBox(
                width: 165,
                height: 60,
                child: RaisedButton(
                  color: Color.fromRGBO(110, 213, 161, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
/*                      side: BorderSide(color: Colors.black)*/
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward, size: 40, color: Colors.white),
                      Text(
                        "Enviar",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: 20
                        ),
                      )
                    ],
                  ),
                  onPressed: (){Navigator.of(context).pushNamed('/recipe');},
                ),
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}