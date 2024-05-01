library contact_view;

import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marketing_website/components/footer.dart';
import 'package:marketing_website/components/header.dart';
import 'package:marketing_website/widgets/simple_button.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'contact_view_model.dart';

part 'contact_mobile.dart';
part 'contact_tablet.dart';
part 'contact_desktop.dart';

// ignore: must_be_immutable
class ContactView extends StatelessWidget {
  static const routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ContactViewModel>.reactive(
        viewModelBuilder: () => ContactViewModel(),
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _ContactMobile(viewModel),
            desktop: _ContactDesktop(viewModel),
            tablet: _ContactTablet(viewModel),

            //Uncomment it if you've planned to support specifically for desktop and tablet
            //desktop: _ContactDesktop(viewModel),
            //tablet: _ContactTablet(viewModel),
          );
        });
  }
}
