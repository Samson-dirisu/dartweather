class Wind {
  double? speed;
  int? deg;
  double? gust;

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }
}
