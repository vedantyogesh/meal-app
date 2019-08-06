import 'package:flutter/material.dart';
import 'package:mealapp/pages/category_meals_screen.dart';

import './pages/category_screen.dart';
import './pages/category_meals_screen.dart';
import './pages/meals_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(),
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.teal,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
              ))),
      routes: {
        '/categories-meals': (context) => CategoryMealsScreen(),
        MealsDetailScreen.routeName: (context) => MealsDetailScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoriesScreen(),
        );
      },
    );
  }
}
