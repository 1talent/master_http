import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tuto_http/app/presentation/widgets/post_single_bg.dart';
import 'package:tuto_http/app/view_model/controllers/post_upload_controller.dart';

class PostUploadScreen extends StatelessWidget {
  const PostUploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


   PostUploadController mPostUploadController = Get.find<PostUploadController>();

    TextEditingController mPostTextController = TextEditingController();

    mPostTextController.addListener(() {
      mPostUploadController.changingPostText(mPostTextController.text);
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload your new post.'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10.w,
            horizontal: 30.w,
          ),
          child: PostSingleBg(
              customChild: Column(
                mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/post.jpeg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 185.h,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              TextField(
                textAlign: TextAlign.left,
                controller: mPostTextController,
                maxLines: 2,
                autofocus: true,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'What is on your mind?',
                    hintStyle: TextStyle(color: Colors.grey)),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Obx((){
                return ElevatedButton(
                  onPressed: () {
                    if(mPostUploadController.postText.value.isNotEmpty){
             
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: mPostUploadController.postText.value.isEmpty?Colors.grey:Theme.of(context).primaryColor,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Center(
                    child: Text('Upload'),
                  ));
              })
            ],
          )),
        ),
      ),
    );
  }
}
