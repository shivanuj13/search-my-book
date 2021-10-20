import 'package:flutter/material.dart';
import 'package:search_my_book/page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      textTheme: GoogleFonts.oswaldTextTheme(Theme.of(context).textTheme,)),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}