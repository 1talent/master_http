class ApiResult<T> {
  late T mData;
  late String errorMsg;
  late int statusCode;
  late Status status;

  ApiResult({
    required this.mData,
    required this.errorMsg,
    required this.status,
    required this.statusCode,
  });
}

enum Status { success, fail }
