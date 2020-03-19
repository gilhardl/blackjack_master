import 'package:blackjackmaster/utils/constants.dart';
import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppName),
      ),
      body: Center(child: Text('WELCOME')),
    );
  }
}
