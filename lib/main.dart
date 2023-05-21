import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/data/services/api_binding.dart';
import 'app/modules/main/controllers/main_controller.dart';
import 'app/modules/main/main_page.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() {
  Get.put(MainController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initial,
      initialBinding: ApiServiceBinding(),
      getPages: AppPages.pages,
    );
  }
}
