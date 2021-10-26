import 'dart:io';

import 'package:args/args.dart';
import 'package:dartweather/dartweather.dart';

void main(List<String> arguments) {
  var _dartWeather = DartWeather();
  exitCode = 0;
  final parser = ArgParser()..addOption('state', abbr: 's');

  final argResults = parser.parse(arguments);

  _dartWeather.checkWeather(argResults['state']);
}
