import 'dart:convert';
import 'dart:developer';

import 'package:e_com_flutter_app/api/api_repo.dart';
import 'package:e_com_flutter_app/api/api_repository.dart';
import 'package:e_com_flutter_app/api/url_path.dart';
import 'package:e_com_flutter_app/controller/main_controller.dart';
import 'package:e_com_flutter_app/helper/helper.dart';

import 'package:e_com_flutter_app/models/login_model.dart';
import 'package:e_com_flutter_app/models/user_model.dart';
import 'package:e_com_flutter_app/views/register/register_view.dart';
import 'package:e_com_flutter_app/widgets/global_widgets.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

import '../../api/api_reference.dart';
import '../../config/config.dart';
import '../../config/pref_constant.dart';
import '../../config/preference.dart';
import '../product/product_view.dart';
import '../profile/profile_view.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final mainController = Get.put(MainController.instance);

  var formKey = GlobalKey<FormState>();

  LoginViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

  void forgetPasswordHandler() {}

  void loginHandler() async {
    if (formKey.currentState!.validate()) {
      callLoginApi();
    }
  }

  // Future<String> loginApi() async {
  //   setBusy(true);
  //   Map<String, dynamic> body = {
  //     "email": email.text,
  //     "password": password.text,
  //   };
  //   final data = await ApiReference.apiPost(UrlPath.login, body);
  //   setBusy(false);
  //   if (data.success!) {
  //     final login = LoginModel.fromJson(data.data);
  //     if (login.accessToken!.isNotEmpty && login.refreshToken!.isNotEmpty) {
  //       setBusy(true);
  //       await SharedPreferenceHelper.setString(Preferences.token, jsonEncode(login.accessToken!));
  //       await SharedPreferenceHelper.setString(Preferences.refreshToken, jsonEncode(login.accessToken!));
  //       await SharedPreferenceHelper.setBoolean(Preferences.isLogin, true);
  //       final user = await ApiReference.apiGet(UrlPath.profile);
  //       setBusy(false);
  //       if (user.success!) {
  //         final userModel = UserModel.fromJson(user.data);
  //         if (userModel.avatar == defaultImage) {
  //           Get.offNamed(ProfileView.routeName);
  //         } else {
  //           Get.offNamed(ProductView.routeName);
  //           // return ProductView.routeName;
  //         }
  //       }
  //     }
  //   }

  //   return "";
  // }

  void signUpHanlder() {
    Get.toNamed(RegisterView.routeName);
  }

  String? inputValidator(String? value, type) {
    if (value == null || value.isEmpty) {
      switch (type) {
        case 'email':
          return 'Invaild Email';

        case 'password':
          return 'Invaild Password';
        default:
      }
    }
    return null;
  }

  Future<void> callLoginApi() async {
    setBusy(true);
    try {
      await SharedPreferenceHelper.clearPref();
      final login = await apiRepo.login(email.text, password.text);
      await SharedPreferenceHelper.setString(Preferences.token, login!.accessToken!);
      await SharedPreferenceHelper.setString(Preferences.refreshToken, login.refreshToken!);
      await SharedPreferenceHelper.setBoolean(Preferences.isLogin, true);
      mainController.token.value = login.accessToken!;
      final profile = await apiRepo.profile();
      mainController.user.value = profile;
      setBusy(true);
      if (profile.avatar == defaultImage) {
        Get.offNamed(ProfileView.routeName);
      } else {
        Get.offNamed(ProductView.routeName);
      }
    } catch (error, stackTrace) {
      setBusy(false);
      Helper.printFunctionName(stackTrace, error);
      GlobalWidgets.snackBar(Get.context!, msg: 'Invaild Creditionals');
    }
  }
}
