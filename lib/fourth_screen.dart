 
import 'package:flutter/material.dart';
import 'package:hockey__app/fifth_screen.dart';

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
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                ),
                Expanded(
                  child: 
                  Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Image(
                    image: AssetImage('assets/images/Forward.jpg'),
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                ),
                Expanded(
                  child: 
                  Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Image(
                    image: AssetImage('assets/images/Defender.jpg'),
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
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
                      child: 
                      Text('Next'),
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
