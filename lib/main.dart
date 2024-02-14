import 'package:eslami/Home.dart';
import 'package:eslami/Splash.dart';
import 'package:eslami/Utils/sura_details/sura_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Splash.routeName:(_)=>Splash(),
        Home.routeName:(_)=>Home(),
        SuraDetails.routeName:(_)=>SuraDetails(),
      },
      initialRoute:Home.routeName ,
    );
  }
}
