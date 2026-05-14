import 'package:api_app/core/api/end_points.dart';

class ErrorModel {
  final int status;
  final String errormessage;

  ErrorModel({required this.status, required this.errormessage});
  factory ErrorModel.fromjson(Map<String, dynamic> jsondata) {
    return ErrorModel(
      status: jsondata[ApiKey.status],
      errormessage: jsondata[ApiKey.errormessage],
    );
  }
}
