import 'package:tuto_http/app/util/helpers/api_result.dart';

class ApiResponse{
  Status status;
  late String errorMessage;
  late int statusCode;
  late dynamic mData;

  ApiResponse(this.errorMessage, this.statusCode, this.mData,this.status);
}