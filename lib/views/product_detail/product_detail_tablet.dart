part of product_detail_view;

// ignore: must_be_immutable
class _ProductDetailTablet extends StatelessWidget {
  final ProductDetailViewModel viewModel;

  _ProductDetailTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProductDetailTablet')),
    );
  }
}