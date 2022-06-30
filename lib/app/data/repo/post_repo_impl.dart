
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tuto_http/app/data/repo/post_repo.dart';
import 'package:tuto_http/app/util/helpers/api_helper.dart';
import 'package:tuto_http/app/util/helpers/api_response.dart';
import 'package:tuto_http/app/util/helpers/api_result.dart';
import 'package:tuto_http/app/service/vos/post_vo.dart';

class PostRepoImpl implements PostRepo{

  late ApiHelper apiHelper;
  PostRepoImpl(){
   apiHelper = ApiHelper();
  }

  @override
  Future<ApiResult<List<PostVo>>> fetchPostList() async {
    try{
      ApiResponse responseResult = await apiHelper.getData("post");
    
      if(responseResult.status==Status.success){
      Map mapResult = jsonDecode(responseResult.mData);
      List<PostVo> postResultList = postVoFromJson(jsonEncode(mapResult["data"]));
      return ApiResult(mData: postResultList, status: Status.success,statusCode: responseResult.statusCode,errorMsg: "");
      }
      else{
       return ApiResult(mData: [], status: Status.fail,statusCode: responseResult.statusCode,errorMsg: responseResult.errorMessage);
      }
    }
    catch(e){
      debugPrint(e.toString());
      return ApiResult(mData: [], status: Status.fail,statusCode: 404,errorMsg: "Something went wrong");
    }
  }

}