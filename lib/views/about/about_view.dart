library about_view;

import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marketing_website/components/header.dart';
import 'package:marketing_website/widgets/simple_button.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import '../../components/footer.dart';

import 'about_view_model.dart';

part 'about_mobile.dart';
part 'about_tablet.dart';
part 'about_desktop.dart';

// ignore: must_be_immutable
class AboutView extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AboutViewModel>.reactive(
        viewModelBuilder: () => AboutViewModel(),
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _AboutMobile(viewModel),
            desktop: _AboutDesktop(viewModel),
            tablet: _AboutTablet(viewModel),

            //Uncomment it if you've planned to support specifically for desktop and tablet
            //desktop: _AboutDesktop(viewModel),
            //tablet: _AboutTablet(viewModel),
          );
        });
  }
}
