part of contact_view;

// ignore: must_be_immutable
class _ContactMobile extends StatelessWidget {
  final ContactViewModel viewModel;

  _ContactMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ContactMobile')),
    );
  }
}