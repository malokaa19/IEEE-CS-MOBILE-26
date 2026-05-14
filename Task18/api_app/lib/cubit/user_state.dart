import 'package:api_app/models/get_user_model.dart';

class UserState {}

final class UserInitial extends UserState {}

final class SignInLoading extends UserState {}

final class SignInSuccess extends UserState {}

final class UploadProfilePic extends UserState {}

final class SignInFailure extends UserState {
  final String errorMessage;
  SignInFailure(this.errorMessage);
}

final class SignUpLoading extends UserState {}

final class SignUpSuccess extends UserState {
  final String message;
  SignUpSuccess(this.message);
}

final class SignUpFailure extends UserState {
  final String errorMessage;
  SignUpFailure(this.errorMessage);
}

final class GetUserloading extends UserState {}

final class GetUsersuccess extends UserState {
  final UserModel user;

  GetUsersuccess({required this.user});
}

final class GetUserfailure extends UserState {
  final String errorMessage;
  GetUserfailure(this.errorMessage);
}
