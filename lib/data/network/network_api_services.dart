import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:visitor_app/data/exceptions/app_exceptions.dart';
import 'package:visitor_app/data/network/base_api_service.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print('url ==> $url');
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
      print("response ==> $response");
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeout('');
    }
    if (kDebugMode) {
      print(responseJson);
    }

    return responseJson;
  }

  @override
  Future<dynamic> postApi(data, String url) async {
    if (kDebugMode) {
      print('url ==> $url');
      print('data ==> $data');
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            // If data is in raw form then we will encode it 
            // body: jsonEncode(data),
            body: data,
          )
          .timeout(
            const Duration(
              seconds: 10,
            ),
          );
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeout('');
    }

    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  @override
  Future<dynamic> updateApi(data, String url) async {
    if (kDebugMode) {
      print('url ==> $url');
      print('data ==> $data');
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            // If data is in raw form then we will encode it 
            // body: jsonEncode(data),
            body: data,
          )
          .timeout(
            const Duration(
              seconds: 10,
            ),
          );
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeout('');
    }

    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }


  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
       dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataException(
            'Error occur while communication with url ${response.statusCode}');
    }
  }
}
