import 'package:flutter/material.dart';
import 'package:fplayer_rater/model/player_card.dart';
import 'package:fplayer_rater/model/player_model.dart';

class PlayerList extends StatelessWidget {
  final List<Player> players;

  PlayerList(this.players);

  ListView _buildList(context) {
    return new ListView.builder(
      itemCount: players.length,
      itemBuilder: (context, int) {
        return new PlayerCard(players[int]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
}