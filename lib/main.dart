import 'package:flutter/material.dart';
import 'package:islami_app/home/HomeScreen.dart';

void main() {
  runApp(Mayapp());
}

class Mayapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
