class Weathermodel {
  final String name;
  final double tempc;
  final String text;
  final String mainicon;
  List<ForeCastday> forecastday;

  Weathermodel({
    required this.name,
    required this.tempc,
    required this.text,
    required this.mainicon,
    required this.forecastday,
  });

  factory Weathermodel.fromJson(Map<String, dynamic> json) {
    return Weathermodel(
      name: json['location']['name'],
      tempc: json['current']['temp_c'],
      text: json['current']['condition']['text'],
      mainicon: json['current']['condition']['icon'],
      forecastday: (json['forecast']['forecastday'] as List)
          .map((e) => ForeCastday.fromJson(e))
          .toList(),
    );
  }
}

class ForeCastday {
  final String date;
  final double avgtempC;
  final String listicon;
  final List<Hour> hour;

  ForeCastday({
    required this.date,
    required this.avgtempC,
    required this.listicon,
    required this.hour,
  });
  factory ForeCastday.fromJson(Map<String, dynamic> json) {
    return ForeCastday(
      date: json['date'],
      avgtempC: json['day']['avgtemp_c'],
      listicon: json['day']['condition']['icon'],
      hour: (json['hour'] as List).map((e) => Hour.fromJson(e)).toList(),
    );
  }
}

class Hour {
  final String time;
  final double tempC;
  final String icon;

  Hour({required this.time, required this.tempC, required this.icon});

  factory Hour.fromJson(Map<String, dynamic> json) {
    return Hour(
      time: json['time'],
      tempC: json['temp_c'],
      icon: json['condition']['icon'],
    );
  }
}
