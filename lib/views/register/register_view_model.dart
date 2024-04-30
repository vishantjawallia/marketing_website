import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

import '../../config/config.dart';
import '../../config/pref_constant.dart';
import '../../config/preference.dart';
import '../../helper/helper.dart';
import '../../widgets/global_widgets.dart';

class RegisterViewModel extends BaseViewModel {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  var formKey = GlobalKey<FormState>();

  RegisterViewModel() {
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

  String? inputValidator(String? value, type) {
    if (value == null || value.isEmpty) {
      switch (type) {
        case 'name':
          return 'Invaild Name';
        case 'email':
          return 'Invaild Email';
        case 'password':
          return 'Invaild Password';
        default:
      }
    }
    return null;
  }

// {
// 	"name": "Vishu",
// 	"email": "vishu@gmail.com",
// 	"password": "12345678",
//     "avatar": "https://placehold.co/400"
// }

  void loginHandler() {
    if (formKey.currentState!.validate()) {
      callRegisterApi();
    }
  }

  Future<void> callRegisterApi() async {
    try {
      setBusy(true);
      await SharedPreferenceHelper.clearPref();
      final register = await apiRepo.register(name.text, email.text, password.text);
      setBusy(false);
      if (register!.email!.isNotEmpty) {
        GlobalWidgets.snackBar(Get.context!, msg: 'Register Successfully!', color: Colors.green.shade900);
        Get.back();
      }
    } catch (error, stackTrace) {
      setBusy(false);
      Helper.printFunctionName(stackTrace, error);
      GlobalWidgets.snackBar(Get.context!, msg: 'Invaild Creditionals');
    }
  }
}
