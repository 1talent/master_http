import 'package:tuto_http/app/service/vos/post_vo.dart';
import 'package:tuto_http/app/util/helpers/api_result.dart';

abstract class PostRepo{
  Future<ApiResult<List<PostVo>>> fetchPostList();
}