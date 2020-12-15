import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Color.fromRGBO(255, 144, 144, 1),
        leading: Icon(
          Icons.arrow_back_outlined,
          size: 35,
        ),
        title: Image.asset(
          'images/logo.png',
          width: 119,
          height: 35,
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(255, 166, 166, 1),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          'ESQUEÇEU A SUA SENHA?',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'FAÇA OS PASSOS A SEGUIR:',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 111, right: 81),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Insira Seu Usuário'),
                          Container(
                            width: 250,
                            height: 36,
                            child: TextField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide:
                                      BorderSide(color: Colors.greenAccent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide:
                                      BorderSide(color: Colors.green[900]),
                                ),
                                filled: true,
                                fillColor: Colors.greenAccent,
                                hintText: 'Usuário',
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(80, 73, 73, 1)),
                              ),
                              textAlignVertical: TextAlignVertical.bottom,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color.fromRGBO(255, 166, 166, 1),
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 81),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Coloque Seu E-mail'),
                          Container(
                            width: 250,
                            height: 36,
                            child: TextField(
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide:
                                      BorderSide(color: Colors.greenAccent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide:
                                      BorderSide(color: Colors.green[900]),
                                ),
                                filled: true,
                                fillColor: Colors.greenAccent,
                                hintText: 'E-Mail',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(80, 73, 73, 1),
                                ),
                              ),
                              textAlignVertical: TextAlignVertical.bottom,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 200,
                    color: Color.fromRGBO(255, 166, 166, 1),
                  ),
                  Container(
                    width: 251,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 194, 122, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 81),
                              child: Text('SEGUINTE'),
                            ),
                            Icon(
                              Icons.arrow_back,
                              textDirection: TextDirection.rtl,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
