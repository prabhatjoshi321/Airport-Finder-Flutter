import 'dart:async';
import 'package:first/models/place_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PlacesService{
  static final _service = new PlacesService();
  static PlacesService get(){
    return _service;
  }

  final String searchUrl = 'https://maps.googleapis.com/maps/api/place/textsearch/json?query=new+york+city+point+of+interest&language=en&key=AIzaSyAuQ6P1nITj7Sm0mUcyTrUsBINaTZj5t4M';

  Future<List<Place>> getNearbyPlaces() async{

  var response = await http.get(searchUrl,headers:{"Accept":"application/json"});
  var places = <Place>[];
  List data = json.decode(response.body)["results"];

  data.forEach((f) => places.add(new Place(f["icon"], f["name"], f["rating"].toString(), f["vicinity"], f['place_id'])));
  return places;

  }
}