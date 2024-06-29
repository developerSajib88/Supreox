// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:supreox/data/api/custom_log.dart';
import 'package:supreox/data/api/error_response.dart';
import 'package:supreox/utils/toaster.dart';

class ApiMethod {

  Map<String, String> requestHeaders() {
    Map<String, String> basicHeaderInfo = {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader:
      "Basic ${base64Encode(utf8.encode("demo-client:demo-secret"))}",
    };
    return basicHeaderInfo;
  }


  /// This class I am create for
  /// Separate http method as like get
  /// from api service. And for separate part by part for re-use in api service

  // Get Method
  Future<Map<String, dynamic>?> get(String url) async {
    try {
      final response = await http
          .get(Uri.parse(url), headers: requestHeaders())
          .timeout(const Duration(seconds: 60));

      responseReport(method: "GET", response: response.body.toString());

      if (response.statusCode == 200) {
        final successMessage = jsonDecode(response.body)["message"];
        Toaster.basicToast(message: successMessage);
        return jsonDecode(response.body);
      } else if (response.statusCode == 401) {
        ErrorResponse errorResponse =
            ErrorResponse.fromJson(jsonDecode(response.body));
        Toaster.errorToast(warningMessage: errorResponse.message);
        CustomLog.customPrinter("🐞🐞🐞 Error Alert 401 🐞🐞🐞");
        CustomLog.customPrinter("Hit Here!**|token-expire|******* $url");
        return null;
      } else if (response.statusCode == 204) {
        ErrorResponse errorResponse =
            ErrorResponse.fromJson(jsonDecode(response.body));
        Toaster.errorToast(warningMessage: errorResponse.message);
        CustomLog.customPrinter("🐞🐞🐞 Error Alert 204 🐞🐞🐞");
        return null;
      } else if (response.statusCode == 406) {
        ErrorResponse errorResponse =
            ErrorResponse.fromJson(jsonDecode(response.body));
        Toaster.errorToast(warningMessage: errorResponse.message);
        CustomLog.customPrinter("🐞🐞🐞 Error Alert 406 🐞🐞🐞");
        return null;
      } else if (response.statusCode == 400) {
        ErrorResponse errorResponse =
            ErrorResponse.fromJson(jsonDecode(response.body));
        Toaster.errorToast(warningMessage: errorResponse.message);
        CustomLog.customPrinter(
            "🐞🐞🐞 Error Alert 400 || ${response.statusCode} 🐞🐞🐞");
        return null;
      } else if (response.statusCode != 200) {
        ErrorResponse errorResponse =
            ErrorResponse.fromJson(jsonDecode(response.body));
        Toaster.errorToast(warningMessage: errorResponse.message);
        CustomLog.customPrinter(
            "🐞🐞🐞 Error Alert 400 || ${response.statusCode} 🐞🐞🐞");
        return null;
      } else {
        ErrorResponse errorResponse =
            ErrorResponse.fromJson(jsonDecode(response.body));
        Toaster.errorToast(warningMessage: errorResponse.message);
        CustomLog.customPrinter("🐞🐞🐞 Error Alert 🐞🐞🐞");

        CustomLog.customPrinter(
            "unknown error hit in status code ${jsonDecode(response.body)}");
        return null;
      }
    } on SocketException {
      CustomLog.customPrinter("🐞🐞🐞 Error Alert on Socket Exception 🐞🐞🐞");
      return null;
    } on TimeoutException {
      CustomLog.customPrinter("🐞🐞🐞 Error Alert 🐞🐞🐞");

      CustomLog.customPrinter("Time out exception $url");
      return null;
    } on http.ClientException catch (err, stackTrace) {
      CustomLog.customPrinter("🐞🐞🐞 Error Alert 🐞🐞🐞");
      CustomLog.customPrinter("client exception hit");
      CustomLog.customPrinter(err.toString());
      CustomLog.customPrinter(stackTrace.toString());
      return null;
    } catch (e, err) {
      CustomLog.customPrinter("🐞🐞🐞 Error Alert 🐞🐞🐞");
      CustomLog.customPrinter("❌❌❌  unlisted error received");
      CustomLog.customPrinter("❌❌❌ $e");
      CustomLog.customPrinter("❌❌❌ $err");
      return null;
    }
  }


  /// This function for checking after api calling api url, body, and api method
  prevReport(
      {required String method,
      required String url,
      Map<String, dynamic>? body}) {
    print("|-------");
    print("|🚀  📡  🚀|");

    CustomLog.customPrinterYellow("[METHOD] : $method");
    CustomLog.customPrinterYellow("[url] : $url");
    CustomLog.customPrinterWhite("[body] : $body");
    print("|🚀|");
    print("|-------");
  }

  /// This function for checking
  /// after api calling api url, body, and Api response from server
  static responseReport({
    required String method,
    required String response,
  }) {
    print("|-------");
    print("|🌱|");
    CustomLog.customPrinterGreen("[METHOD] : $method");
    CustomLog.customPrinterGreen("[Response] : $response");
    print("|🌱|");
    print("|-------");
  }
}
