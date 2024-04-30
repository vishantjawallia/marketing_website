import 'package:carousel_slider/carousel_slider.dart';
import 'package:stacked/stacked.dart';

import '../../models/product.dart';

class ProductDetailViewModel extends BaseViewModel {
  Product? product;

  ProductDetailViewModel(this.product) {
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
}
