import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuto_http/app/presentation/routes/app_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'HTTP APP',
      initialRoute: AppNames.mainScreen,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true,scaffoldBackgroundColor: Color(0xffF9F9F9)),
      getPages: App.screens,
    );
  }
}
