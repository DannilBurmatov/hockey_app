import 'package:flutter/material.dart';
import 'package:hockey__app/fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          'Players',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, right: 10, left: 10),
            color: Colors.lightBlueAccent,
            child: Column(
              children: [
                Text(
                  'There are 3 types of players: Forwards, Defenders, Goalies. \nUsually 17-22 players from one team apply for a match. The minimum and maximum number of players is determined by the tournament regulations. \nThere must be six players on the field at the same time from one team: five field players and one goalkeeper. It is allowed to replace the goalkeeper with the sixth field player. Changes of players are possible both during pauses during the stoppage of the game time, and directly during the game. \nDuring overtime, the number of players on the court can be reduced by the tournament regulations (usually to five: goalkeeper + four field, but from December 15, 2016 in the KHL, MHL and WHL 3 by 3 overtimes have been introduced: goalkeeper + 3 field). In the NHL, starting in the 2015-16 season, overtime in the 3v3 format was introduced: goalkeeper + three field',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      child: Text(
                        'Back',
                      ),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    MaterialButton(
                      child: Text('Next'),
                      height: 40,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FourthScreen()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
