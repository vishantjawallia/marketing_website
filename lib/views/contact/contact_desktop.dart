part of contact_view;

// ignore: must_be_immutable
class _ContactDesktop extends StatelessWidget {
  final ContactViewModel viewModel;

  _ContactDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderSection(onTap: viewModel.onPageChange, loginTap: viewModel.loginTap, signUpTap: viewModel.signUpTap),
      body: Column(
        children: [
FooterSection(),
        ],
      ),
      // bottomNavigationBar: FooterSection(),
    );
  }
}
