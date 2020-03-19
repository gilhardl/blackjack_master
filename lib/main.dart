import 'package:blackjackmaster/screens/table_screen.dart';
import 'package:blackjackmaster/utils/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
      ),
      home: TableScreen(),
    );
  }
}
