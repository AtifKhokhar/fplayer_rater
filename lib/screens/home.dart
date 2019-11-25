import 'package:flutter/material.dart';
import 'package:fplayer_rater/model/player_list.dart';
import 'package:fplayer_rater/model/player_model.dart';
import 'package:fplayer_rater/screens/new_player_form.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  var initialPlayers = <Player>[]
    ..add(new Player('Alexis Sanchez', 'Inter', 'Forward'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[500],
          title: Text("Football Player Rater"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _showNewPlayerForm,
            ),
          ],
        ),
        body: new Container(
          child: new PlayerList(initialPlayers),
        )
    );
  }

  Future _showNewPlayerForm() async {
    Player newPlayer = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return AddPlayerFormPage();
        },
      ),
    );
    // A null check, to make sure that the user didn't abandon the form.
    if (newPlayer != null) {
      // Add a newDog to our mock dog array.
      initialPlayers.add(newPlayer);
    }
  }
}




