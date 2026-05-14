import 'package:api_app/core/api/end_points.dart';

class SignUpModel {
  final String message;

  SignUpModel({required this.message});
  factory SignUpModel.fromJson(Map<String, dynamic> jsondata) {
    return SignUpModel(message: jsondata[ApiKey.message]);
  }
}
