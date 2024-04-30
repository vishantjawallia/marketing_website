library register_view;

import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/simple_button.dart';
import 'register_view_model.dart';

part 'register_mobile.dart';
part 'register_tablet.dart';
part 'register_desktop.dart';

// ignore: must_be_immutable
class RegisterView extends StatelessWidget {
  static const routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      viewModelBuilder: () => RegisterViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _RegisterMobile(viewModel),
          desktop: _RegisterMobile(viewModel),
          tablet: _RegisterMobile(viewModel),

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _RegisterDesktop(viewModel),
          //tablet: _RegisterTablet(viewModel),  
        );
      }
    );
  }
}