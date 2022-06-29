import 'package:get/get.dart';
import 'package:tuto_http/app/presentation/screens/main/main_screen.dart';
import 'package:tuto_http/app/presentation/screens/post_upload/post_upload_screen.dart';
import 'package:tuto_http/app/view_model/dl/main_binding.dart';
import 'package:tuto_http/app/view_model/dl/post_upload_binding.dart';
part './app_names.dart';

abstract class App {
  static final screens = [
    GetPage(
      name: AppNames.mainScreen,
      page: () => const MainScreen(),
      binding:MainBinding()
    ),
     GetPage(
      name: AppNames.postUploadScreen,
      page: () => const PostUploadScreen(),
      binding: PostUploadBinding()
    )
  ];
}
