import 'package:api_app/cache/cache_helper.dart';
import 'package:api_app/core/api/api_consumer.dart';
import 'package:api_app/core/api/end_points.dart';
import 'package:api_app/core/errors/exceptions.dart';
import 'package:api_app/core/functions/upload_image_to_api.dart';
import 'package:api_app/models/get_user_model.dart';
import 'package:api_app/models/sign_in_model.dart';
import 'package:api_app/models/sign_up_model.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class UserRepository {
  final ApiConsumer api;

  UserRepository({required this.api});

  Future<Either<String, SignInModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await api.post(
        EndPoints.signIn,
        data: {ApiKey.email: email, ApiKey.password: password},
      );
      final user = SignInModel.fromJson(response);
      final decodedtoken = JwtDecoder.decode(user.token);
      CacheHelper().saveData(key: ApiKey.token, value: user.token);
      CacheHelper().saveData(key: ApiKey.id, value: decodedtoken[ApiKey.id]);
      return right(user);
    } on ServerException catch (e) {
      return left(e.errmodel.errormessage);
    }
  }

  Future<Either<String, SignUpModel>> signUp({
    required String email,
    required String password,
    required String phone,
    required String name,
    required String confirmPassword,
    required XFile profilePic,
  }) async {
    try {
      final response = await api.post(
        EndPoints.signup,
        data: {
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.name: name,
          ApiKey.phone: phone,
          ApiKey.confirmPassword: confirmPassword,
          ApiKey.location:
              '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
          ApiKey.profilePic: uploadImageToAPI(profilePic),
        },
      );
      final signupmodel = SignUpModel.fromJson(response);
      return right(signupmodel);
    } on ServerException catch (e) {
      return left(e.errmodel.errormessage);
    }
  }

  Future<Either<String, UserModel>> getUserProfile() async {
    try {
      final response = await api.get(
        EndPoints.getUserdata(CacheHelper().getData(key: ApiKey.id)),
      );
      final user = UserModel.fromJson(response);
      return right(user);
    } on ServerException catch (e) {
      return left(e.errmodel.errormessage);
    }
  }
}
