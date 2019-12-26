import 'package:flutter/material.dart';
import "dart:math";

void main() => runApp(
      MaterialApp(
        home: App(),
      ),
    );

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int chosenNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Magic 8 Ball",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Ask the ball, click the ball.",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      )
                    ],
                  )),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Random random = new Random();
                  setState(() {
                    chosenNumber = random.nextInt(5) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('assets/images/ball$chosenNumber.png'),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
