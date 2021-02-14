import 'package:flutter/material.dart';
import 'package:hockey__app/third_screen.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
