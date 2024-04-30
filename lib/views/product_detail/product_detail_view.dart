library product_detail_view;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import '../../theme/palette.dart';
import 'product_detail_view_model.dart';

part 'product_detail_mobile.dart';
part 'product_detail_tablet.dart';
part 'product_detail_desktop.dart';

// ignore: must_be_immutable
class ProductDetailView extends StatelessWidget {
  static const routeName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductDetailViewModel>.reactive(
      viewModelBuilder: () => ProductDetailViewModel(Get.arguments),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ProductDetailMobile(viewModel),
          desktop: _ProductDetailMobile(viewModel),
          tablet: _ProductDetailMobile(viewModel),

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _ProductDetailDesktop(viewModel),
          //tablet: _ProductDetailTablet(viewModel),  
        );
      }
    );
  }
}