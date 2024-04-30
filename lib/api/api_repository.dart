import "dart:convert";
import "dart:developer";
import "dart:io";

import "package:dio/dio.dart";
import "package:e_com_flutter_app/config/pref_constant.dart";
import "package:e_com_flutter_app/config/preference.dart";
import "package:flutter/foundation.dart";
import "../helper/helper.dart";

Dio dio = Dio();

class ApiRepository {
  ApiRepository._();
  static ApiRepository get instance => ApiRepository._();

  Future<Response?> get(
    String url, {
    int? statusCode,
    String? query,
  }) async {
    // var token = mainController.token.value;
    // log(token);
    var token = SharedPreferenceHelper.getString(Preferences.token);

    Map<String, dynamic> headers = {};
    headers['Content-Type'] = 'application/json';
    if (token.isNotEmpty && token != 'null') headers['Authorization'] = 'Bearer $token';

    Options options = Options(
      headers: headers,
      receiveTimeout: const Duration(seconds: 5),
      sendTimeout: const Duration(seconds: 5),
    );

    try {
      final response = await dio.get("$url${query ?? ""}", options: options);
      if (kDebugMode) {
        print("url:$url");
        print("statusCode:${response.statusCode}");
        print("body:${response.data}");
      }
      if (response.statusCode == (statusCode ?? 200)) {
        return response;
      } else {
        throw Exception("Status Code: ${response.statusCode} and Expection Occured: ${response.data}");
      }
    } catch (e, stackTrace) {
      log(e.toString());
      log(headers.toString());
      log(stackTrace.toString());
      Helper.printFunctionName(stackTrace, e);
      return null;
    }
  }

  Future<Response?> post(
    String url,
    Map<String, dynamic> body, {
    int? statusCode,
  }) async {
    Map<String, dynamic> headers = {
      'Content-Type': 'application/json',
    };
    var token = SharedPreferenceHelper.getString(Preferences.token);
    //  var token = mainController.token.value;
    log(token);
    if (token.isNotEmpty) {
      headers['Authorization'] = 'Bearer $token}';
    }
    Options options = Options(
      headers: headers,
      receiveTimeout: const Duration(seconds: 5),
      sendTimeout: const Duration(seconds: 5),
    );
    if (kDebugMode) {
      print("url:$url");
      print("body:$body");
    }
    try {
      final response = await dio.post(url, data: jsonEncode(body), options: options);
      if (kDebugMode) {
        print("url:$url");
        print("statusCode:${response.statusCode}");
        print("body:${response.data}");
      }
      if (response.statusCode == (statusCode ?? 200)) {
        return response;
      } else {
        throw Exception("Status Code: ${response.statusCode} and Expection Occured: ${response.data}");
      }
    } catch (e, stackTrace) {
      log(e.toString());
      Helper.printFunctionName(stackTrace, e);
      return null;
    }
  }
  Future<Response?> put(
    String url,
    Map<String, dynamic> body, {
    int? statusCode,
  }) async {
    Map<String, dynamic> headers = {
      'Content-Type': 'application/json',
    };
    var token = SharedPreferenceHelper.getString(Preferences.token);
    //  var token = mainController.token.value;
    log(token);
    if (token.isNotEmpty) {
      headers['Authorization'] = 'Bearer $token}';
    }
    Options options = Options(
      headers: headers,
      receiveTimeout: const Duration(seconds: 5),
      sendTimeout: const Duration(seconds: 5),
    );
    if (kDebugMode) {
      print("url:$url");
      print("body:$body");
    }
    try {
      final response = await dio.put(url, data: jsonEncode(body), options: options);
      if (kDebugMode) {
        print("url:$url");
        print("statusCode:${response.statusCode}");
        print("body:${response.data}");
      }
      if (response.statusCode == (statusCode ?? 200)) {
        return response;
      } else {
        throw Exception("Status Code: ${response.statusCode} and Expection Occured: ${response.data}");
      }
    } catch (e, stackTrace) {
      log(e.toString());
      Helper.printFunctionName(stackTrace, e);
      return null;
    }
  }

  Future<Response?> multiPartFormData(
    String url,
    File file, {
    int? statusCode,
  }) async {
    Map<String, dynamic> headers = {
      'Content-Type': 'multipart/form-data',
    };
    var token = SharedPreferenceHelper.getString(Preferences.token);
    if (token.isNotEmpty) {
      headers['Authorization'] = 'Bearer $token}';
    }
    Options options = Options(
      headers: headers,
      receiveTimeout: const Duration(seconds: 5),
      sendTimeout: const Duration(seconds: 5),
    );
    if (kDebugMode) {
      print("url:$url");
    }
    String fileName = getFileNameFromFile(file);
    FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path, filename: fileName),
    });
    try {
      final response = await dio.post(url, data: formData, options: options);

      if (kDebugMode) {
        print("url:$url");
        print("statusCode:${response.statusCode}");
        print("body:${response.data}");
      }
      if (response.statusCode == (statusCode ?? 200)) {
        return response;
      } else {
        throw Exception("Status Code: ${response.statusCode} and Expection Occured: ${response.data}");
      }
    } catch (e, stackTrace) {
      log(e.toString());
      Helper.printFunctionName(stackTrace, e);
      return null;
    }
  }

  String getFileNameFromFile(File file) {
    // Get the full path of the file
    String fullPath = file.path;

    // Split the path by the platform-specific file separator
    List<String> pathParts = fullPath.split(Platform.pathSeparator);

    // Extract the last part of the path, which is the file name
    String fileName = pathParts.last;

    return fileName;
  }
}
