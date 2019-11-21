import 'package:flutter/material.dart';
import 'package:fplayer_rater/model/player_model.dart';

class PlayerCard extends StatefulWidget {
  final Player player;

  PlayerCard(this.player);

  _PlayerCardState createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {
  bool _isHighlyRated = true;

  Widget build(BuildContext context) {
  return Center(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile(
              leading: Icon(Icons.stars),
              title: Text(widget.player.name),
              subtitle: Text('Position: ' + widget.player.position  + ' Club: ' + widget.player.club),

            )
          ]
      ),
//      child: InkWell(
//        splashColor: (_isHighlyRated ? Colors.green : Colors.red.withAlpha(30)),
//        onTap: () {
//          print('Card tapped.');
//        },
//        child: Container(
//          width: 300,
//          height: 100,
//          child: Text(widget.player.name),
//        ),
//      ),
    ),
  );
 }
}