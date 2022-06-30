import 'dart:convert';

import 'package:get/get.dart';
import 'package:tuto_http/app/service/app_data/data/constant_post.dart';
import 'package:tuto_http/app/service/services/post_service.dart';
import 'package:tuto_http/app/service/vos/post_vo.dart';

class PostController extends GetxController {

  late PostService service = PostService();
  
  RxList<PostVo> postList = RxList();

  PostController(){
    fetchPostList();
  }

  void getPostList() {
    List<PostVo> mPostList = ConstantPost().getAllPost();
    postList.addAll(mPostList);
  }

  fetchPostList() async {
   var resultPostList = await service.getPostList();

   if(resultPostList!=null){
    postList.addAll(resultPostList);
   }
   
  }



}
