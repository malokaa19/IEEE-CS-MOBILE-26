import 'package:api_app/core/api/end_points.dart';

class UserModel {
  final String name;
  final String phone;
  final Map<String, dynamic> location;
  final String profilePic;
  final String email;

  UserModel({
    required this.name,
    required this.phone,
    required this.location,
    required this.profilePic,
    required this.email,
  });
  factory UserModel.fromJson(Map<String, dynamic> jsondata) {
    return UserModel(
      name: jsondata['user'][ApiKey.name],
      phone: jsondata['user'][ApiKey.phone],
      location: jsondata['user'][ApiKey.location],
      profilePic: jsondata['user'][ApiKey.profilePic],
      email: jsondata['user'][ApiKey.email],
    );
  }
}
