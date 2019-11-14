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
      child: InkWell(
        splashColor: (_isHighlyRated ? Colors.green : Colors.red.withAlpha(30)),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: 300,
          height: 100,
          child: Text('A card that can be tapped'),
        ),
      ),
    ),
  );
 }
}