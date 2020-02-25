import 'package:first/models/place_model.dart';
import 'package:flutter/material.dart';
import 'package:first/services/place_service.dart';



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

      body:  _createContent(),
    );
  }

  Widget _createContent(){
    if(_places == null){
      return new Center(
      child: new CircularProgressIndicator(),
      );
    }

    else{

      return new ListView(
        children: _places.map((f){
          return new ListTile(
            title: new Text(f.name),
            leading: new Image.network(f.icon),
            subtitle: new Text(f.vicinity),
          );
        }).toList(),
      );
    }
  }

List<Place> _places;
  @override void initState(){
    super.initState();

    PlacesService.get().getNearbyPlaces().then((data){
      this.setState((){
            _places = data;
      });
    });
  }
}