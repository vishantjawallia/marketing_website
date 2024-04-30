library login_view;

import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/simple_button.dart';
import 'login_view_model.dart';

part 'login_mobile.dart';
part 'login_tablet.dart';
part 'login_desktop.dart';

// ignore: must_be_immutable
class LoginView extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onViewModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _LoginMobile(viewModel),
          desktop: (_) => _LoginMobile(viewModel),
          tablet: (_) => _LoginMobile(viewModel),
        );
      },
    );
  }
}
