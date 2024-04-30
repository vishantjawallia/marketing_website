part of product_detail_view;

// ignore: must_be_immutable
class _ProductDetailMobile extends StatelessWidget {
  final ProductDetailViewModel viewModel;

  _ProductDetailMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail: #${viewModel.product!.id}'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 400,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 600),
                viewportFraction: 0.8,
              ),
              items: viewModel.product!.images!
                  .map((item) => Center(
                          child: Hero(
                        tag: 'imag$item',
                        child: Image(
                          image: NetworkImage(item),
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      )))
                  .toList(),
            ),
            const SizedBox(width: 0.0, height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Palettes.primary,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      viewModel.product!.category!.name!,
                      style: context.textTheme.bodySmall,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    viewModel.product!.title!,
                    style: context.textTheme.titleMedium,
                  ),
                  Text(
                    "\$${viewModel.product!.price!}",
                    style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, color: Colors.blue),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    viewModel.product!.description!,
                    style: context.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
