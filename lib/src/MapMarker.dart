import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
//import 'package:flutter_map/flutter_map.dart';

class MapMarker {
const MapMarker({
required this.distance,
required this.image,
required this.numeracion,
required this.location,
required this.title,
});
final String distance;
final String image;
final String numeracion;
final LatLng location;
final String title;

}

final _locations = [
  //postes
  LatLng(-36.83387,-73.05619),
  LatLng(-36.83347,-73.05642),
  LatLng(-36.83301,-73.05672),
  //camaras
  LatLng(-36.83287,-73.05644),
  LatLng(-36.83282,-73.05632),
  //edificacion
  LatLng(-36.83306,-73.05653),
];

const _path = "perfil/src/Iconos";

final mapMarkers = [
  MapMarker(
    distance: "punto A al B 14.8 mts",
    image:'${_path}circulorojo.png',
    numeracion: "0001",
    location: _locations[0],
    title: "PosteBaja",),

    MapMarker(
    distance: "punto C al B 11.8 mts",
    image:'${_path}circuloblanco.png',
    numeracion: "0002",
    location: _locations[1],
    title: "PostedeAlta",),

    MapMarker(
    distance: "punto C al D 9.8 mts",
    image:'${_path}circulorojo.png',
    numeracion: "0003",
    location: _locations[2],
    title: "PosteBaja",),
  
    MapMarker(
    distance: "punto C al Camara 21.3 mts",
    image:'${_path}cuadrado.png',
    numeracion: "0011",
    location: _locations[3],
    title: "Cámara",),
  
    MapMarker(
    distance: "punto C al A 15.6 mts",
    image:'${_path}cuadrado.png',
    numeracion: "0012",
    location: _locations[4],
    title: "Cámara",),

    MapMarker(
    distance: "punto A al E 19.0 mts",
    image:'${_path}construccion.png',
    numeracion: "0101",
    location: _locations[5],
    title: "Edificación",),
];
