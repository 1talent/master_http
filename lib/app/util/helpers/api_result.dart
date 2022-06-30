class ApiResult<T>{

 late T mData;
 late String errorMsg;
 late int statusCode;
 late Status status;

}


enum Status{success,fail}