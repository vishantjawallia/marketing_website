import 'dart:developer';
import 'dart:io';
import 'package:e_com_flutter_app/config/config.dart';
import 'package:e_com_flutter_app/models/product.dart';
import '../helper/helper.dart';
import '../models/login_model.dart';
import '../models/upload_model.dart';
import '../models/user_model.dart';
import 'api_service.dart';
import 'api_repository.dart';
import 'url_path.dart';

class ApiRepo implements ApiService {
  final _apiRepository = ApiRepository.instance;

  ApiRepo._();
  static ApiRepo get instance => ApiRepo._();

  @override
  Future<List<Product>> products({int? id, String? query}) async {
    List<Product>? value;
    try {
      await Future.delayed(const Duration(seconds: 2));
      final response = await _apiRepository.get(UrlPath.products, query: query);
      value = Product.fromJsonList(response!.data);
      return value;
    } catch (e, stackTrace) {
      Helper.printFunctionName(stackTrace, e);
    }
    return value!;
  }

  @override
  Future<LoginModel?> login(String email, String password) async {
    LoginModel? value;

    Map<String, dynamic> body = {};
    body['email'] = email;
    body['password'] = password;

    try {
      final response = await _apiRepository.post(UrlPath.login, body, statusCode: 201);
      value = LoginModel.fromJson(response!.data);
    } catch (e, stackTrace) {
      Helper.printFunctionName(stackTrace, e);
    }

    return value!;
  }

  @override
  Future<UserModel?> register(String name, String email, String password) async {
    UserModel? value;

    Map<String, dynamic> body = {};
    body['name'] = name;
    body['email'] = email;
    body['password'] = password;
    body['avatar'] = defaultImage;

    try {
      final response = await _apiRepository.post(UrlPath.users, body, statusCode: 201);
      value = UserModel.fromJson(response!.data);
    } catch (e, stackTrace) {
      Helper.printFunctionName(stackTrace, e);
    }

    return value!;
  }

  @override
  Future<UserModel?> edit(String name, String userId, {File? file}) async {
    UserModel? value;

    Map<String, dynamic> body = {};
    body['name'] = name;
    body['avatar'] = defaultImage;

    try {
      if (file != null) {
        final res1 = await _apiRepository.multiPartFormData(UrlPath.upload, file, statusCode: 201);
        log(res1.toString());
        final upload = UploadModel.fromJson(res1!.data);
        log(upload.toString());
        if (upload.location!.isNotEmpty) {
          body['avatar'] = upload.location;
          final res2 = await _apiRepository.put("${UrlPath.users}/$userId", body, statusCode: 200);
          log(res2.toString());
          value = UserModel.fromJson(res2!.data);
          log(value.toString());
          return value;
        }
      } else {
        final response = await _apiRepository.put("${UrlPath.users}/$userId", body, statusCode: 201);
        value = UserModel.fromJson(response!.data);
        return value;
      }
    } catch (e, stackTrace) {
      Helper.printFunctionName(stackTrace, e);
    }
    return value!;
  }

  @override
  Future<UserModel> profile() async {
    UserModel? value;

    try {
      final response = await _apiRepository.get(UrlPath.profile, statusCode: 200);
      value = UserModel.fromJson(response!.data);
    } catch (e, stackTrace) {
      Helper.printFunctionName(stackTrace, e);
    }

    return value!;
  }
}
