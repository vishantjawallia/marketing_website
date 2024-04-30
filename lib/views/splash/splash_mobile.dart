part of splash_view;

// ignore: must_be_immutable
class _SplashMobile extends StatelessWidget {
  final SplashViewModel viewModel;

  _SplashMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'E Commerce App',
        style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
      )),
    );
  }
}
