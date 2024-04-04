import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

const MAPBOX_ACCESS_TOKEN =
'pk.eyJ1IjoibWF1cmljaW92YXJlbGEiLCJhIjoiY2wzcnEybzh6MWtvdzNkbDhnZDJsdnVydyJ9.H3ZJn1Bynf5ZQ71ha3O9Mw';
//-36.83346,-73.05647
final _myLocation = LatLng(-36.83310,-73.05621);
final _myLocation1 = LatLng(-36.83346,-73.05647);
final _myLocation2 = LatLng(-36.83385,-73.05621);
final _myLocation3 = LatLng(-36.83301,-73.05679);
class Mapa1 extends StatelessWidget {
  const Mapa1({Key? key}) : super(key: key);


//-36.8332, -73.05649
  @override
Widget build(BuildContext context) {

  appBar: AppBar(
          title: Text('Markers'),
        );
  return  FlutterMap(
    options: MapOptions(
  bounds: LatLngBounds(_myLocation),
   //bounds: LatLngBounds(LatLng(-36.83387, -36.83387), LatLng(-73.05619, -73.05619)),S
  boundsOptions: FitBoundsOptions(padding: EdgeInsets.all(8.0)),
),
    layers: [
      TileLayerOptions(
        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        subdomains: ['a', 'b', 'c'],
        attributionBuilder: (_) {
          return Text("");
        },
      ),
      MarkerLayerOptions(
        markers: [
          Marker(
            width: 20.0,
            height: 20.0,
            point: _myLocation,
            builder: (ctx) =>
            Container(
              child: Image.asset('assets/edifi.JPG'),
            ),
          ),
          Marker(
            width: 20.0,
            height: 20.0,
            point: _myLocation1,
            builder: (ctx) =>
            Container(
              child: Image.asset('assets/edifi.JPG'),
            ),
          ),
           Marker(
            width: 20.0,
            height: 20.0,
            point: _myLocation1,
            builder: (ctx) =>
            Container(
              child: Image.asset('assets/cr.JPG'),
            ),
          ),
           Marker(
            width: 20.0,
            height: 20.0,
            point: _myLocation2,
            builder: (ctx) =>
            Container(
              child: Image.asset('assets/cuad.JPG'),
            ),
          ),
           Marker(
            width: 20.0,
            height: 20.0,
            point: _myLocation3,
            builder: (ctx) =>
            Container(
              child: Image.asset('assets/cr.JPG'),
            ),
          ),
        ],
      ),
    ],
  );
}
}

