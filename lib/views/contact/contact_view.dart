library contact_view;

import 'package:marketing_website/views/home/components/footer_section.dart';
import 'package:marketing_website/views/home/components/header_section.dart';
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
          tablet: _ContactMobile(viewModel),

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _ContactDesktop(viewModel),
          //tablet: _ContactTablet(viewModel),  
        );
      }
    );
  }
}