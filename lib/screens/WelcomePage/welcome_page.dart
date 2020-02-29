import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  Function toggleView;

  WelcomePage({this.toggleView});

  @override
  State<StatefulWidget> createState() {
    return welcomePage();
  }
}

class welcomePage extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        heroTag: "FAB",
        backgroundColor: Color(0xFF2D78FF),
        onPressed: () {
          setState(() {
            widget.toggleView();
          });
        },
        icon: Icon(Icons.arrow_forward),
        label: Text("Get Started"),
      ),
      appBar: AppBar(centerTitle: true, title: Text("Welcome to LifeSaver")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 6,
              color: Color(0xFF2D78FF),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 28.0, horizontal: 20),
                child: Text(
                  "LifeSaver will save your life",
                  style: TextStyle(fontSize: 29, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
