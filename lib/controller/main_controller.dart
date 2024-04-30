// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:get/get.dart';

import '../models/user_model.dart';

class MainController extends GetxController {
  MainController._();
  static MainController get instance => MainController._();

  RxString token = "".obs;
  Rx<UserModel?> user = Rx(null);
}
