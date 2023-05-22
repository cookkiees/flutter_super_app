import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt pageIndex = 0.obs;

  var isLoading = false.obs;
  void onTabSelected(int index) {
    isLoading.value = true; // Tampilkan Circular Progress Indicator

    // Delay untuk simulasi proses asinkron (misalnya, pengambilan data)
    Future.delayed(const Duration(milliseconds: 200), () {
      // Lakukan perpindahan halaman sesuai dengan indeks yang dipilih
      pageIndex.value = index;
      isLoading.value = false;
    });
  }

  RxBool isBottomNavBarVisible = true.obs;

  ScrollController scroll = ScrollController();

  @override
  void onInit() {
    scroll = ScrollController();
    scroll.addListener(() {
      double scrollPosition = scroll.position.pixels;
      double maxScrollExtent = scroll.position.maxScrollExtent;
      onScroll(scrollPosition, maxScrollExtent);
    });
    super.onInit();
  }

  void onScroll(double scrollPosition, double maxScrollExtent) {
    if (scrollPosition >= maxScrollExtent) {
      isBottomNavBarVisible.value = false;
    } else {
      isBottomNavBarVisible.value = true;
    }
  }
}
