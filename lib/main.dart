import 'package:flutter/material.dart';
import 'package:morango_app/Screens/HomeScreen.dart';
import 'package:morango_app/Screens/signin_screen.dart';
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
          primaryColor: const  Color.fromRGBO(255, 144, 144, 1),
          scaffoldBackgroundColor: const  Color.fromRGBO(255, 144, 144, 1),
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
