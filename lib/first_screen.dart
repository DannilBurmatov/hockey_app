import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hockey__app/second_screen.dart';
import 'package:hockey__app/third_screen.dart';
import 'package:hockey__app/fifth_screen.dart';

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
      drawer:
      MediaQuery.of(context).size.width<500?
      Drawer(
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
              padding: EdgeInsets.only(top: 20, bottom: 20),
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
              child: Text(
                'Back',
                style: TextStyle(color: Colors.white),
              ),
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
      ): null
    );
  }
}
