import 'package:flutter/material.dart';

class PlacesScreen extends StatefulWidget{
@override
State<StatefulWidget> createState() {
  return new PlacesScreenState();
}
}

class PlacesScreenState extends State<PlacesScreen>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("Nearby Airports"),
      ),

      body:new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text("first item"),
            trailing:  new Icon(Icons.arrow_forward),
            ),
          new ListTile(
            title: new Text("second item"),
            trailing:  new Icon(Icons.arrow_forward),
            ),
        ],
      ),
    );
  }
}