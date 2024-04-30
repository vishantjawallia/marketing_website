import 'dart:io';

import '../models/login_model.dart';
import '../models/product.dart';
import '../models/user_model.dart';
import 'url_path.dart';

abstract class ApiService extends UrlPath {
  /// [Get]
  // Future<void> profile();
  // Future<void> categories({int? id});
  Future<List<Product>> products({int? id, String? query});
  Future<LoginModel?> login(String email, String password);
  Future<UserModel?> register(String name, String email, String password);
  Future<UserModel?> edit(String name, String userId, {File? file});
  Future<UserModel?> profile();

  /// [Post]
  // Future<void> login();
  // Future<void> register();
  // Future<void> refreshToken();
}
