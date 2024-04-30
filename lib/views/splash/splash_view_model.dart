import 'package:e_com_flutter_app/config/pref_constant.dart';
import 'package:e_com_flutter_app/config/preference.dart';
import 'package:e_com_flutter_app/views/login/login_view.dart';
import 'package:e_com_flutter_app/views/product/product_view.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

import '../../config/config.dart';
import '../../controller/main_controller.dart';
import '../profile/profile_view.dart';

class SplashViewModel extends BaseViewModel {
  final mainController = Get.put(MainController.instance);
  SplashViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2));

    var boolean = SharedPreferenceHelper.getBoolean(Preferences.isLogin);
    var token = SharedPreferenceHelper.getString(Preferences.token);
    if (token != "null") {
      if (boolean && token.isNotEmpty) {
        final profile = await apiRepo.profile();
        mainController.user.value = profile;
        if (profile.avatar == defaultImage) {
          Get.offNamed(ProfileView.routeName);
        } else {
          Get.offNamed(ProductView.routeName);
        }
      } else {
        SharedPreferenceHelper.clearPref();
        Get.offNamed(LoginView.routeName);
      }
    } else {
      SharedPreferenceHelper.clearPref();
      Get.offAllNamed(LoginView.routeName);
    }
  }
}
