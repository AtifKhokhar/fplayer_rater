import 'package:flutter/material.dart';
import 'package:fplayer_rater/model/player_list.dart';
import 'package:fplayer_rater/model/player_model.dart';

class Home extends StatelessWidget {

  var initialPlayers = <Player>[]
    ..add(new Player('Alexis Sanchez','Inter','Forward'));




  @override
  Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[500],
          title: Text("Football Player Rater"),
        ),
        body: new Container(
          child: new PlayerList(initialPlayers),
        )
      );
}

}