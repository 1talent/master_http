import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuto_http/app/presentation/widgets/post_single_bg.dart';

class PostUploadScreen extends StatelessWidget {
  const PostUploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload your new post.'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: 380.h,
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
            SizedBox(
              height: 8.h,
            ),
            const TextField(
              textAlign: TextAlign.left,
              maxLines: 2,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What is on your mind?',
                  hintStyle: TextStyle(color: Colors.grey)),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Center(
                  child: Text('Upload'),
                ))
          ],
        )),
      ),
    );
  }
}
