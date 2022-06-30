import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tuto_http/app/util/helpers/api_response.dart';
import 'package:tuto_http/app/util/helpers/api_result.dart';
part './app_exception.dart';

class ApiHelper {
  late String baseUrl;

  ApiHelper() {
    baseUrl = "https://dummyapi.io/data/v1/";
  }

  ApiHelper.custom(String newBaseUrl) {
    baseUrl = newBaseUrl;
  }


   Future<ApiResponse> getData(String uri) async {
    try{
     var url = Uri.parse(baseUrl+uri);
     final response = await http.get(url,headers: {"app-id":"62b96f2263ae73585619d4fe"});
     var responseJson = _returnResponse(response);
     return responseJson;
    }
    catch(e){
    debugPrint(uri+e.toString());
     return ApiResponse("Something Went Wrong", 404, "", Status.fail);
    }
   }


   ApiResponse _returnResponse(var response) {
    if (response != null) {
      switch (response.statusCode) {
        case 200:
          var responseJson = response.body;
          return ApiResponse("", 200, responseJson, Status.success);
        case 201:
          var responseJson = response.body;
          return ApiResponse("", 201, responseJson, Status.success);
        case 400:
        return ApiResponse("Bad Request Exception: ${response.statusMessage}", 400, "", Status.fail);
        case 401:
        return ApiResponse("Unauthorised  Exception: ${response.statusMessage}", 401, "", Status.fail);
        case 403:

        return ApiResponse("Forbidden Error  Exception: ${response.statusMessage}", 403, "", Status.fail);

        default:
         return ApiResponse("No Internet Exception", 404, "", Status.fail);

      }
    } 
    else {
      return ApiResponse("No Internet Exception", 404, "", Status.fail);
    }
  }


}
