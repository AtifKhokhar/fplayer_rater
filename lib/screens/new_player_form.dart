import 'package:flutter/material.dart';
import 'package:fplayer_rater/model/player_model.dart';

class AddPlayerFormPage extends StatefulWidget {
  @override
  _AddPlayerFormPageState createState() => _AddPlayerFormPageState();
}

class _AddPlayerFormPageState extends State<AddPlayerFormPage>
{

  TextEditingController nameController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  TextEditingController clubController = TextEditingController();

  void submitPlayer(BuildContext context) {
    if (nameController.text.isEmpty) {
      print('Players need names!');
    } else {
      var newPlayer = Player(nameController.text, positionController.text,
          clubController.text);
      Navigator.of(context).pop(newPlayer);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Text("Football Player Rater"),
      ),
      body: Container(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 32.0,
            ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Enter Player Name'
                  )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: positionController,
                    decoration: InputDecoration(
                      labelText: "Enter Player's Position",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: clubController,
                    decoration: InputDecoration(
                      labelText: "Enter Player's Club",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Builder(
                  builder: (BuildContext context) {
                    // The basic Material Design action button.
                    return RaisedButton(
                      onPressed: () => submitPlayer(context),
                      color: Colors.red[500],
                      child: Text('Submit Player'),
                    );
                  },
                ),
              ),
            ]
          ),
        )
      )
    );
  }
}