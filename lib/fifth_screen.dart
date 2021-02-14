
import 'package:flutter/material.dart';

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
                  textAlign: TextAlign.center,
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
