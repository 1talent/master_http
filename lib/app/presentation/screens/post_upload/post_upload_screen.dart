import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuto_http/app/presentation/widgets/post_single_bg.dart';

class PostUpload extends StatelessWidget {
  const PostUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload your new post.'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 10.w,
          horizontal: 30.w,
        ),
        child: PostSingleBg(
            customChild: Column(
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
          ],
        )),
      ),
    );
  }
}
