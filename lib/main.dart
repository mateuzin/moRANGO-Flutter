import 'package:flutter/material.dart';

import 'package:morango_app/screens/Mix_Screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'moRANGO',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255,75,75,75),
          scaffoldBackgroundColor: const Color.fromARGB(255,50,50,50),
          appBarTheme: const AppBarTheme(
              elevation: 0
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: (settings){
          switch(settings.name){
            case '/mix':
              return MaterialPageRoute(
                  builder: (_) => MixScreen()
              );
            case '/':
            default:
              return MaterialPageRoute(
                  builder: (_) => MixScreen()
              );
          }
        }
    );
  }
}
