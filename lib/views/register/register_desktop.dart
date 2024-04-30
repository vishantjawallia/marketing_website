part of register_view;

// ignore: must_be_immutable
class _RegisterDesktop extends StatelessWidget {
  final RegisterViewModel viewModel;

  _RegisterDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('RegisterDesktop')),
    );
  }
}