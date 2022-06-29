import 'package:get/get.dart';

class PostUploadController extends GetxController{


  RxString postText = RxString("");

  changingPostText(String value){
     postText.value = value;
  }
}