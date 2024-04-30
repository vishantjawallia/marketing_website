import 'package:e_com_flutter_app/views/splash/splash_view.dart';
import 'package:get/get.dart';

import 'views/login/login_view.dart';
import 'views/product/product_view.dart';
import 'views/product_detail/product_detail_view.dart';
import 'views/profile/profile_view.dart';
import 'views/register/register_view.dart';

final routes = [
  GetPage(name: SplashView.routeName, page: () => SplashView()),
  GetPage(name: LoginView.routeName, page: () => LoginView()),
  GetPage(name: RegisterView.routeName, page: () => RegisterView()),
  GetPage(name: ProfileView.routeName, page: () => ProfileView()),
  GetPage(name: ProductView.routeName, page: () => ProductView()),
  GetPage(name: ProductDetailView.routeName, page: () => ProductDetailView()),
];
