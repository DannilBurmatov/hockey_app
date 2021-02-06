import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Basics of hockey',
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
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Image(
                      image: AssetImage('assets/images/team_russia.jpg'),
                    ),
                  ),
                ),
                Column(
                  children: [
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          child: Text('Exit'),
                          height: 40,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          onPressed: () => exit(0),
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
                                    builder: (context) => SecondScreen()));
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
              child: new Text(
                'Menu',
                style: TextStyle(fontSize: 45, color: Colors.lightBlue),
              ),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              decoration: new BoxDecoration(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Ink(
                color: Colors.lightBlue,
                child: ListTile(
                  title: Text(
                    'History',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Ink(
                color: Colors.lightBlue,
                child: ListTile(
                  title: Text(
                    'Players',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdScreen()));
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20, bottom: 20
              ),
              child: Ink(
                color: Colors.lightBlue,
                child: ListTile(
                  title: Text(
                    'Playgrounds',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FifthScreen()));
                  },
                ),
              ),
            ),
            MaterialButton(
              child: Text('Back',style: TextStyle(color: Colors.white),),
              height: 40,
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          'History',
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
                  'At the very beginning of the spring of 1875, a hockey match was held for the first time at the Victoria skating rink in Montreal. Two teams played with a total of 18 people. A wooden “shinny” was hammered into the prototype of a hockey goal, and protective equipment was used similar to baseball. All information about the first match was documented in the local newspaper. \nBy 1877, students from McGill University had drawn up the first 7 rules of ice hockey. In 1799, they were supplemented, and the first unofficial set of rules appeared. At the same time, the first rubber washer was developed instead of a wooden one. \nFour years later, the game of hockey appeared at the Winter Carnival in Montreal. Two years later, the Montreal Amateur Hockey Association was formed, and the following year was marked by the creation of official rules and an international meeting between the teams of Great Britain and Canada.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
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
                                builder: (context) => ThirdScreen()));
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
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'There are 3 types of players: Forwards, Defenders, Goalies. \nUsually 17-22 players from one team apply for a match. The minimum and maximum number of players is determined by the tournament regulations. \nThere must be six players on the field at the same time from one team: five field players and one goalkeeper. It is allowed to replace the goalkeeper with the sixth field player. Changes of players are possible both during pauses during the stoppage of the game time, and directly during the game. \nDuring overtime, the number of players on the court can be reduced by the tournament regulations (usually to five: goalkeeper + four field, but from December 15, 2016 in the KHL, MHL and WHL 3 by 3 overtimes have been introduced: goalkeeper + 3 field). In the NHL, starting in the 2015-16 season, overtime in the 3v3 format was introduced: goalkeeper + three field',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
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

class FourthScreen extends StatelessWidget {
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
            padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            color: Colors.lightBlueAccent,
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/Askarov.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Image(
                    image: AssetImage('assets/images/Forward.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Image(
                    image: AssetImage('assets/images/Defender.jpg'),
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
                                builder: (context) => FifthScreen()));
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

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          'Playgrounds',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, right: 10, left: 10),
            color: Colors.lightBlueAccent,
            child: Column(
              children: [
                Text(
                  'In the rules of the MFHS and NHL, the dimensions of the hockey rink are different. According to the rules of the IIHF, the maximum dimensions are 61 meters long and 30 meters wide, the minimum dimensions are 56 meters long and 26 meters wide; in official competitions under the auspices of the IIHF, the size of the area must be 60-61 m in length and 29-30 m in width; for other competitions, the minimum court size is set at 40x20 meters. NHL rules dictate the size of the court is 200x85 feet, that is, 60.96 x 25.90 meters. In the NHL, it is believed that smaller sizes contribute to power struggles, shots on goal, playing at the boards, where there are many hot single combats, skirmishes and fights. The corners of the court should be rounded with an arc of a circle with a radius of 7 m to 8.5 m according to the IIHF rules and 28 feet (8.53 m) in the NHL. The following link provides a comparison of the size of the sites according to the "Soviet Sport".',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
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
