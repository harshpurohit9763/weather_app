class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? himidity;
  double? feels_like;
  int? pressure;

  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.himidity,
      this.feels_like,
      this.pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    wind = json['wind']['speed'];
    himidity = json['main']['humidity'];
    feels_like = json['main']['feels_like'];
    pressure = json['main']['pressure'];
  }

  get humidity => null;
}
