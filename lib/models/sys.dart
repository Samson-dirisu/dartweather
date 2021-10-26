class Sys {
  String? country;
  int? sunrise;
  int? sunset;

  Sys.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }
}
