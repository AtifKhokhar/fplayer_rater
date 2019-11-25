import 'package:flutter/material.dart';
import 'package:fplayer_rater/model/player_model.dart';

class PlayerCard extends StatefulWidget {
  final Player player;

  PlayerCard(this.player);

  _PlayerCardState createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {
  bool _isHighlyRated = true;
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);


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
            ),
             new Text(_value.toStringAsFixed(1)),
             new Slider(min: 0.0, max: 100, value: _value, onChanged: _setvalue),
          ]
      ),
    ),
  );
 }
}