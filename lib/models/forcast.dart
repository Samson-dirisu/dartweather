import 'package:dartweather/models/sys.dart';
import 'package:dartweather/models/weather.dart';
import 'package:dartweather/models/wind.dart';

import 'clouds.dart';
import 'coord.dart';
import 'main.dart';

class ForeCast {
   Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;



  ForeCast.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add( Weather.fromJson(v));
      });
    }
    base = json['base'];
    main = json['main'] != null ?  Main.fromJson(json['main']) : null;
    visibility = json['visibility'];
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    clouds =
        json['clouds'] != null ?  Clouds.fromJson(json['clouds']) : null;
    dt = json['dt'];
    sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'];
    cod = json['cod'];
  }
}
