part of login_view;

// ignore: must_be_immutable
class _LoginTablet extends StatelessWidget {
  final LoginViewModel viewModel;

  _LoginTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('LoginTablet')),
    );
  }
}