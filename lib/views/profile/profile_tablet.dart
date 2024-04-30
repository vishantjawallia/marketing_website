part of profile_view;

// ignore: must_be_immutable
class _ProfileTablet extends StatelessWidget {
  final ProfileViewModel viewModel;

  _ProfileTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProfileTablet')),
    );
  }
}