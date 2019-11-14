import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(FPlayer_Rater());

class FPlayer_Rater extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Football Player Rater',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[500],
          title: Text("Football Player Rater"),
        ),
        body: Home(),
      ),
    );
  }
}