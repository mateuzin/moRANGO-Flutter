import 'package:flutter/material.dart';
import 'package:morango_app/screens/recipe_screen.dart';
import 'package:morango_app/models/user_model.dart';
import 'package:morango_app/screens/mix_screen.dart';
import 'package:morango_app/screens/addrecipe_screen.dart';
import 'package:morango_app/screens/forgot.dart';
import 'package:morango_app/screens/forgot2.dart';
import 'package:morango_app/screens/home_screen.dart';
import 'package:morango_app/screens/loading.dart';
import 'package:morango_app/screens/recipes_screen.dart';
import 'package:morango_app/screens/search_screen.dart';
import 'package:morango_app/screens/signin_screen.dart';
import 'package:morango_app/screens/signup_screen.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
          title: 'moRANGO',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            canvasColor: Colors.transparent,
            primaryColor: const Color.fromRGBO(255, 144, 144, 1),
            scaffoldBackgroundColor: const Color.fromRGBO(255, 144, 144, 1),
            appBarTheme: const AppBarTheme(elevation: 0),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/search':
                return MaterialPageRoute(builder: (_) => SearchScreen());
              case '/recipes':
                return MaterialPageRoute(builder: (_) => RecipesScreen());
              case '/mix':
                return MaterialPageRoute(builder: (_) => MixScreen());
              case '/home':
                return MaterialPageRoute(builder: (_) => HomeScreen());
              case '/signup':
                return MaterialPageRoute(builder: (_) => SignupScreen());
              case '/forgot1':
                return MaterialPageRoute(builder: (_) => Forgot());
              case '/forgot2':
                return MaterialPageRoute(builder: (_) => Forgot2());
              case '/loading':
                return MaterialPageRoute(builder: (_) => Loading());
              case '/recipe':
                return MaterialPageRoute(builder: (_) => RecipeScreen());
              case '/addrecipe':
                return MaterialPageRoute(builder: (_) => AddRecipeScreen());
              case '/':
              default:
                return MaterialPageRoute(builder: (_) => SigninScreen());
            }
          }),
    );
  }
}
