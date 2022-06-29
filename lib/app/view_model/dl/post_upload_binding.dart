import 'package:get/get.dart';
import 'package:tuto_http/app/view_model/controllers/post_upload_controller.dart';
class PostUploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostUploadController());
  }
  
}