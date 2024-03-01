import 'package:flutter/material.dart';
import 'package:tour_snap/screens/navshuffle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            centerTitle: true
          )
        ),
        
        home: const Nav(),);
  }
}
