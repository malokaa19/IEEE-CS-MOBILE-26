import 'package:api_app/core/api/end_points.dart';

class SignInModel {
  final String message;
  final String token;

  SignInModel({required this.message, required this.token});

  factory SignInModel.fromJson(Map<String, dynamic> jsondata) {
    return SignInModel(
      message: jsondata[ApiKey.message],
      token: jsondata[ApiKey.token],
    );
  }
}
