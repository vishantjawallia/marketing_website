library product_view;

import 'package:e_com_flutter_app/controller/main_controller.dart';
import 'package:e_com_flutter_app/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';
import 'product_view_model.dart';

part 'product_mobile.dart';
part 'product_tablet.dart';
part 'product_desktop.dart';

// ignore: must_be_immutable
class ProductView extends StatelessWidget {
  static const routeName = '/product';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
        viewModelBuilder: () => ProductViewModel(),
        onViewModelReady: (viewModel) {
          viewModel.pagingController.addPageRequestListener((pageKey) {
            viewModel.fetchPage(pageKey);
          });
          // Do something once your viewModel is initialized
        },
        onDispose: (viewModel) {
          viewModel.pagingController.dispose();
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _ProductMobile(viewModel),
            desktop: _ProductMobile(viewModel),
            tablet: _ProductMobile(viewModel),

            //Uncomment it if you've planned to support specifically for desktop and tablet
            //desktop: _ProductDesktop(viewModel),
            //tablet: _ProductTablet(viewModel),
          );
        });
  }
}
