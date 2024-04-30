// ignore_for_file: constant_identifier_names

import '../api/api_repo.dart';
import '../controller/main_controller.dart';

ApiRepo apiRepo = ApiRepo.instance;
// MainController mainController = MainController.instance;

const String APP_NAME = "Test APP";
const String API_KEY = "21960663-cb5469eaeadafe2e3b658e89e";
const String URL_PRODUCTION = "https://pixabay.com/api/?key=$API_KEY";
const String URL_DEV = "https://pixabay.com/api/?key=$API_KEY";
const String URL_LOCAL = "https://pixabay.com/api/?key=$API_KEY";
const String baseUrl = URL_PRODUCTION;
const String defaultImage = "https://api.lorem.space/image/face?w=640&h=480";
