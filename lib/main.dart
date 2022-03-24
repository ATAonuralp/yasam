import 'package:flutter/material.dart';
import './input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.orange),
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Colors.grey),
      home: InputPage(),
    );
  }
}
