import 'package:dio/dio.dart';
import 'package:weather_app/models/weathermodel.dart';

class ApiHelper {
  Future<Weathermodel> getData(String cityname) async {
    final response = await Dio().get(
      'https://api.weatherapi.com/v1/forecast.json?key=f92417adebf74911ae6223847231204&q=$cityname',
    );
    print(response.data);
    Weathermodel weathermodel = Weathermodel.fromJson(response.data);
    return weathermodel;
  }
}
