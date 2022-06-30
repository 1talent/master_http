import 'package:flutter/material.dart';
import 'package:tuto_http/app/data/repo/post_repo.dart';
import 'package:tuto_http/app/data/repo/post_repo_impl.dart';
import 'package:tuto_http/app/service/vos/post_vo.dart';
import 'package:tuto_http/app/util/helpers/api_result.dart';

class PostService {
  late PostRepo repo;

  PostService() {
    repo = PostRepoImpl();
  }
  Future<dynamic> getPostList() async {
    try {
      ApiResult<List<PostVo>> postData = await repo.fetchPostList();

      if (postData.status == Status.success) {
        /// in here we can work with hive.
        return postData.mData;
      } else {
        debugPrint("status code is ${postData.statusCode} error message is ${postData.errorMsg}");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
