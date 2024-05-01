import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketing_website/views/about/about_view.dart';
import 'package:marketing_website/views/contact/contact_view.dart';
import 'package:marketing_website/views/home/home_view.dart';

final routes = {
  '/': (context) => HomeView(),
  '/about': (context) => AboutView(),
  '/contact': (context) => ContactView(),
};
final getPages = [
  GetPage(name: HomeView.routeName, page: () => HomeView()),
  GetPage(name: AboutView.routeName, page: () => AboutView()),
  GetPage(name: ContactView.routeName, page: () => ContactView()),
];
