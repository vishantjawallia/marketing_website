part of about_view;

// ignore: must_be_immutable
class _AboutDesktop extends StatelessWidget {
  final AboutViewModel viewModel;

  _AboutDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderSection(onTap: viewModel.onPageChange, loginTap: viewModel.loginTap, signUpTap: viewModel.signUpTap),
      body: Column(
        children: [
          FooterSection(),
        ],
      ),
    );
  }
}
