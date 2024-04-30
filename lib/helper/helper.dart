
import 'package:flutter/foundation.dart';

class Helper {
  static void printFunctionName(StackTrace stackTrace, dynamic error) {
    final functionName = RegExp(r'#[0-9]+[\s]+([^\s]+)');
    final match = functionName.firstMatch(stackTrace.toString());
    final functionNameString = match?.group(1) ?? 'Unknown function';
    if (kDebugMode) {
      print('Function: $functionNameString');
      print('runtimeType: ${error.runtimeType} and Error: $error');
    }
    // if (error is DioException) {
    //   // DioError is specific to Dio library and provides detailed information about the error
    //   log('DioError: ${error.message}');
    //   if (error.response != null) {
    //     // Handle DioError with response (e.g., server error)
    //     log('Response data: ${error.response!.data}');
    //     log('Response status: ${error.response!.statusCode}');
    //   }
    // } else {
    //   // Handle generic errors
    //   log('Error: $error');
    // }
  }
}
