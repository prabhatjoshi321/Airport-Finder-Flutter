import 'package:flutter/material.dart';
import 'screens/places_screen.dart';


void main(){

runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: new PlacesScreen(),
    );
    return materialApp;
  }
}

