import 'dart:developer';

import 'package:e_com_flutter_app/api/api_repo.dart';
import 'package:e_com_flutter_app/config/config.dart';
import 'package:e_com_flutter_app/config/preference.dart';
import 'package:e_com_flutter_app/models/product.dart';
import 'package:e_com_flutter_app/views/login/login_view.dart';
import 'package:e_com_flutter_app/views/product_detail/product_detail_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:stacked/stacked.dart';

import '../../controller/main_controller.dart';

class ProductViewModel extends BaseViewModel {
  // List<Product> product = [];
  // var page = 1;
  final mainController = Get.put(MainController.instance);
  var perPage = 4;
  PagingController<int, Product> pagingController = PagingController(firstPageKey: 1);

  ProductViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here
    // product = await apiRepo.products();
    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

  void productIteamTap(Product product) {
    Get.toNamed(ProductDetailView.routeName, arguments: product);
  }

  void darkModelHandler(bool value) {
    if (value) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }
  }

  void fetchPage(pageKey, {bool refresh = false}) async {
    if (refresh) {}
    try {
      String query = '/?offset=$pageKey&limit=$perPage';
      final product = await apiRepo.products(query: query);
      if (product.isNotEmpty) {
        pagingController.appendPage(product, pageKey);
      } else {
        pagingController.appendLastPage([]);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }

  void logOutHandler() {
    
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Text('Logout'),
              onPressed: () async {
                await SharedPreferenceHelper.clearPref();
                Get.offAllNamed(LoginView.routeName);
              },
            ),
          ],
        );
      },
    );
  }
}
