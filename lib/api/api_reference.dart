// // ignore_for_file: depend_on_referenced_packages, empty_catches, avoid_print, unused_local_variabl
// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:e_com_flutter_app/config/pref_constant.dart';
// import '../config/preference.dart';
// import '../helper/helper.dart';
// import '/api/base_model.dart';
// import 'package:http/http.dart' as http;

// final Dio dio = Dio();

// class ApiReference {
//   /* -------------------------------- @apiGet ------------------------------- */
//   static Future<BaseModel> apiGet(String? url, {bool? persistentConnection}) async {
//     var token = SharedPreferenceHelper.getString(Preferences.token);

//     Map<String, dynamic> headers = {
//       'Content-Type': 'application/json',
//       'Authorization': 'Bearer $token',
//     };
//     log(headers.toString());
//     Options options = Options(
//       headers: headers,
//     );
//     options.responseType = ResponseType.json;
//     options.receiveTimeout = const Duration(seconds: 5);
//     options.sendTimeout = const Duration(seconds: 5);

//     try {
//       Response response = await dio.get('$url');
//       print("url===>  $url");
//       print("response===>  ${jsonEncode(response.data)}");
//       if (response.statusCode == 200) {
//         return BaseModel(data: response.data, msg: "Success", success: true);
//       } else {
//         return BaseModel(data: response.data, msg: response.statusMessage, success: false);
//       }
//     } catch (error, stackTrace) {
//       handleError(error, url);
//       Helper.printFunctionName(stackTrace, stackTrace);
//       return const BaseModel(data: null, msg: 'Exception Ouccer !', success: false);
//     }
//   }

//   /* -------------------------------- @apiPost ------------------------------- */
//   static Future<BaseModel> apiPost(String? url, Map<String, dynamic>? body) async {
//     var token = SharedPreferenceHelper.getString(Preferences.token);
//     Map<String, dynamic> headers = {
//       'Content-Type': 'application/json',
//       'Authorization': 'Bearer $token',
//     };
//     Options options = Options(
//       headers: headers,
//     );
//     options.responseType = ResponseType.json;
//     options.receiveTimeout = const Duration(seconds: 5);
//     options.sendTimeout = const Duration(seconds: 5);
//     try {
//       Response response = await dio.post(
//         '$url',
//         options: options,
//         data: jsonEncode(body),
//       );
//       print("url===>  $url");
//       print("body===>  $body");
//       print("response===>  ${jsonEncode(response.data)}");
//       if (response.statusCode == 200) {
//         return BaseModel(data: response.data, msg: "Success", success: true);
//       } else {
//         return BaseModel(data: response.data, msg: response.statusMessage, success: false);
//       }
//     } catch (error, stackTrace) {
//       handleError(error, url);
//       Helper.printFunctionName(stackTrace, stackTrace);
//       return const BaseModel(data: null, msg: 'Exception Ouccer !', success: false);
//     }
//   }

//   /* -------------------------------- @apiDete ------------------------------- */
//   static Future<BaseModel> apiDete(String? url) async {
//     try {
//       Map<String, dynamic> headers = {
//         'Content-Type': 'application/json',
//       };
//       Options option = Options(
//         contentType: "application/json",
//       );

//       Response response = await dio.delete(
//         '$url',
//         options: option,
//       );
//       print("url===>  $url");
//       // print("body===>  $body");
//       print("response===>  ${jsonEncode(response.data)}");
//       if (response.statusCode == 200) {
//         return BaseModel(data: response.data, msg: "Success", success: true);
//       } else {
//         return BaseModel(data: response.data, msg: response.statusMessage, success: false);
//       }
//     } catch (e, stackTrace) {
//       handleError(e, url);
//       Helper.printFunctionName(stackTrace, e);
//       return const BaseModel(data: null, msg: 'Exception Ouccer !', success: false);
//     }
//   }

//   /* -------------------------------- @apiMultiPart ------------------------------- */
//   static Future<BaseModel> apiMultiPart(
//     String? url,
//     Map<String, dynamic>? body,
//     String? fileFiledName,
//     File? file,
//   ) async {
//     Dio dio = Dio();
//     Map<String, dynamic> headers = {
//       'Content-Type': 'application/json',
//     };

//     String fileName = getFileName(file!.path);
//     Map<String, dynamic> body1 = {
//       '$fileFiledName': await MultipartFile.fromFile(file.path, filename: fileName),
//     };
//     body1.addAll(body!);

//     FormData formData = FormData.fromMap(body1);

//     try {
//       // Make a POST request with multipart data
//       Response response = await dio.post(
//         '$url',
//         data: formData,
//         options: Options(headers: headers),
//       );
//       print("url===>  $url");
//       print("body===>  $body");
//       print("response===>  ${jsonEncode(response.data)}");
//       if (response.statusCode == 200) {
//         return BaseModel(data: response.data, msg: "Success", success: true);
//       } else {
//         return BaseModel(data: response.data, msg: response.statusMessage, success: false);
//       }
//       // Handle the response
//     } catch (error, stackTrace) {
//       handleError(error, url);
//       Helper.printFunctionName(stackTrace, error);
//       return const BaseModel(data: null, msg: 'Exception Ouccer !', success: false);
//     }
//   }

//   static String getFileName(String filePath) {
//     // Find the last occurrence of the '/' character
//     int lastIndex = filePath.lastIndexOf('/');

//     // Check if the '/' character is found
//     if (lastIndex != -1 && lastIndex < filePath.length - 1) {
//       // Extract the substring after the last '/'
//       return filePath.substring(lastIndex + 1);
//     } else {
//       // No '/' found, return the original string
//       return filePath;
//     }
//   }

//   static void handleError(dynamic error, url) {
//     if (error is DioException) {
//       // DioError is specific to Dio library and provides detailed information about the error
//       log('DioError: ${error.message}');
//       log('Url: $url');
//       if (error.response != null) {
//         // Handle DioError with response (e.g., server error)
//         log('Response data: ${error.response!.data}');
//         log('Response status: ${error.response!.statusCode}');
//       }
//     } else {
//       // Handle generic errors
//       log('Error: $error');
//     }
//   }

//   static Future<BaseModel> sendNotification(String token, String title, String body) async {
//     // const String serverKey = 'firebase-adminsdk-25ihk@renttas-8eb75.iam.gserviceaccount.com';
//     // const String serverKey = 'sZ-10K46j2-HnbDhCPWcj2mxWwcBGmMUtJMKnt_HFt8';
//     const String serverKey = 'AIzaSyCO6WDfqQ3qeW9OL4ouR7LwTW67-iZCjxE';
//     try {
//       final Map<String, dynamic> data = {
//         'notification': {'title': title, 'body': body},
//         'to': token,
//       };

//       final http.Response response = await http.post(
//         Uri.parse('https://fcm.googleapis.com/fcm/send'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'key=$serverKey',
//         },
//         body: jsonEncode(data),
//       );
//       if (response.statusCode == 200) {
//         print('Notification sent successfully');
//         return const BaseModel(msg: "Success", success: true);
//       } else {
//         print('Failed to send notification. Status code: ${response.statusCode}');
//         return const BaseModel(msg: 'Exception Ouccer !', success: false);
//       }
//     } catch (error, stackTrace) {
//       handleError(error, title);
//       Helper.printFunctionName(stackTrace, error);
//       return const BaseModel(data: null, msg: 'Exception Ouccer !', success: false);
//     }
//   }
// }
