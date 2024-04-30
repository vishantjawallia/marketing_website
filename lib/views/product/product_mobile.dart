part of 'product_view.dart';

// ignore: must_be_immutable
class _ProductMobile extends StatelessWidget {
  final ProductViewModel viewModel;

  const _ProductMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Get.isDarkMode ? Colors.grey.shade900 : Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Obx(() => UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  accountName: Text(
                    viewModel.mainController.user.value?.name ?? "",
                  ),
                  accountEmail: Text(
                    viewModel.mainController.user.value!.email ?? "",
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                      viewModel.mainController.user.value!.avatar ?? "",
                    ),
                  ),
                )),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${!Get.isDarkMode ? 'Dark' : 'Light'} Mode'),
                  Switch(
                    value: context.isDarkMode,
                    onChanged: viewModel.darkModelHandler,
                    activeColor: Colors.white,
                    inactiveTrackColor: Colors.white,
                    inactiveThumbColor: Colors.black,
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: viewModel.logOutHandler,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Product Listing',
        ),
      ),
      body: Visibility(
        replacement: const Center(child: CircularProgressIndicator()),
        visible: !viewModel.isBusy,
        child: PagedListView<int, Product>(
          padding: const EdgeInsets.only(top: 18, bottom: 38, left: 16, right: 16),
          pagingController: viewModel.pagingController,
          shrinkWrap: true,
          builderDelegate: PagedChildBuilderDelegate<Product>(
            noMoreItemsIndicatorBuilder: (context) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(' No More Data Found!'),
                ),
              );
            },
            itemBuilder: (context, product, index) => !product.images!.first.contains("jpeg")
                ? const SizedBox(width: 0.0, height: 0.0)
                : GestureDetector(
                    onTap: () => viewModel.productIteamTap(product),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Card(
                        elevation: 4,
                        color: Get.isDarkMode ? Colors.black : Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Hero(
                                tag: 'imag${product.images!.first}',
                                child: Image(
                                  image: NetworkImage(product.images!.first),
                                  height: 200,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 15),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Palettes.primary,
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: Text(
                                      product.category!.name!,
                                      style: context.textTheme.bodySmall,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    product.title!,
                                    style: context.textTheme.bodyLarge,
                                  ),
                                  RichText(
                                    textWidthBasis: TextWidthBasis.longestLine,
                                    text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "${product.description!.length > 60 ? product.description?.substring(0, 60) : product.description}....",
                                          style: context.textTheme.bodyMedium,
                                        ),
                                        TextSpan(
                                          text: ' Read More',
                                          style: const TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          recognizer: TapGestureRecognizer()..onTap = () => viewModel.productIteamTap(product),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "\$${product.price!}",
                                    style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, color: Colors.blue),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ),
        ),
      ),
      // ListView.builder(
      //   shrinkWrap: true,
      //   itemCount: viewModel.product.length,
      //   padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      //   itemBuilder: (context, index) {
      //     var product = viewModel.product[index];
      //     return GestureDetector(
      //       onTap: () => viewModel.productIteamTap(product),
      //       child: Padding(
      //         padding: const EdgeInsets.symmetric(vertical: 6),
      //         child: Card(
      //           elevation: 4,
      //           color: Colors.white,
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               ClipRRect(
      //                 borderRadius: const BorderRadius.only(
      //                   topLeft: Radius.circular(8),
      //                   topRight: Radius.circular(8),
      //                 ),
      //                 child: Hero(
      //                   tag: 'imag${product.images!.first}',
      //                   child: Image(
      //                     image: NetworkImage(product.images!.first),
      //                     height: 200,
      //                     width: double.infinity,
      //                     fit: BoxFit.fill,
      //                   ),
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(horizontal: 12),
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     const SizedBox(height: 15),
      //                     Container(
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(6),
      //                         color: Palettes.primary,
      //                       ),
      //                       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      //                       child: Text(
      //                         product.category!.name!,
      //                         style: context.textTheme.bodySmall?.copyWith(color: Colors.white),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 6),
      //                     Text(
      //                       product.title!,
      //                       style: context.textTheme.bodyLarge?.copyWith(color: Colors.black),
      //                     ),
      //                     RichText(
      //                       textWidthBasis: TextWidthBasis.longestLine,
      //                       text: TextSpan(
      //                         style: DefaultTextStyle.of(context).style,
      //                         children: <TextSpan>[
      //                           TextSpan(
      //                             text: "${product.description!.length > 60 ? product.description?.substring(0, 60) : product.description}....",
      //                             style: context.textTheme.bodyMedium?.copyWith(color: Colors.black54),
      //                           ),
      //                           TextSpan(
      //                             text: ' Read More',
      //                             style: const TextStyle(
      //                               color: Colors.blue,
      //                               fontWeight: FontWeight.bold,
      //                             ),
      //                             recognizer: TapGestureRecognizer()..onTap = () {},
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     const SizedBox(height: 4),
      //                     Text(
      //                       "\$${product.price!}",
      //                       style: context.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600, color: Colors.blue),
      //                     ),
      //                     const SizedBox(height: 10),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
