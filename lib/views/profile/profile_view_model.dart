import 'dart:io';

import 'package:e_com_flutter_app/config/config.dart';
import 'package:e_com_flutter_app/views/product/product_view.dart';
import 'package:e_com_flutter_app/widgets/global_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

import '../../controller/main_controller.dart';

final picker = ImagePicker();

class ProfileViewModel extends BaseViewModel {
  final mainController = Get.put(MainController.instance);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  File? file;

  ProfileViewModel() {
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

  inputValidator(String? e, String s) {}

  void profileTap() {
    getImageFromGallery();
  }

  void editHandler() {
    if (name.text.isEmpty) {
      return GlobalWidgets.snackBar(Get.context!, msg: 'Name should not be empty!');
    }
    if (file == null) {
      return GlobalWidgets.snackBar(Get.context!, msg: 'Please upload profile image!');
    }
    callEditApi();
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      file = File(pickedFile.path);
      notifyListeners();
    }
  }

  void callEditApi() async {
    setBusy(true);
    final edit = await apiRepo.edit(name.text, "${mainController.user.value!.id}", file: file);

    setBusy(false);
    mainController.user.value = edit;
    Get.offAllNamed(ProductView.routeName);
  }
}
