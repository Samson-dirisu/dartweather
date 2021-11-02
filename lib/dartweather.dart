import 'dart:io';

import 'package:dartweather/services/api.dart';
import 'package:dartweather/utils/runes.dart';

class DartWeather {
  final ApiService _service = ApiService();
  Future checkWeather(String state) async {
    if (state.isEmpty) {
      stderr.writeln('error arguments missing');
    } else {
      try {
        final apiResult = await _service.getWeather(state: state);
        
        stdout.writeln('');
        stdout.writeln(
            'Weather in ${apiResult.name} ${String.fromCharCodes(UtilRunes.rainbow)}');
        stdout.writeln('-----------------------');

        final date =
            DateTime.fromMillisecondsSinceEpoch(apiResult.dt!.toInt() * 1000);
        final dateTimeString = '${date.day}. ${date.month}.${date.year}';
        final tempString =
            'Now: ${apiResult.main?.temp} °C, Min: ${apiResult.main?.tempMin} °C, max: ${apiResult.main?.tempMax} °C';

        stdout.writeln(dateTimeString);
        stdout.writeln(tempString);
        stdout.writeln('');
      } catch (e) {
        stderr.writeln('error: networking error');
        stderr.writeln(e.toString());
      }
    }
  }
}
