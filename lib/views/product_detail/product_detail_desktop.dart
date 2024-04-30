part of product_detail_view;

// ignore: must_be_immutable
class _ProductDetailDesktop extends StatelessWidget {
  final ProductDetailViewModel viewModel;

  _ProductDetailDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProductDetailDesktop')),
    );
  }
}