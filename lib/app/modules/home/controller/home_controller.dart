import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // Menu item progres indicator animation
  var scrollController = ScrollController();
  var indicatorPosition = 0.0.obs;
  AnimationController? animationController;
  Animation<double>? animation;
  @override
  void onInit() {
    super.onInit();
    changeText();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(minutes: 1),
    );
    const double endValue = 50; // Nilai akhir animasi
    final double fullWidth = MediaQuery.of(Get.context!).size.width;
    final double maxPosition = fullWidth - endValue;
    animation = Tween<double>(begin: 0.0, end: maxPosition)
        .animate(animationController!);
    scrollController.addListener(() {
      final currentPosition = scrollController.position.pixels;
      final previousPosition = indicatorPosition.value;
      final positionDiff = (currentPosition - previousPosition).abs();
      var duration = const Duration(minutes: 1); // Default duration
      if (positionDiff > 0) {
        final timeDiff = const Duration(seconds: 30).inMilliseconds;
        duration = Duration(milliseconds: (timeDiff ~/ positionDiff).toInt());
      }
      indicatorPosition.value = currentPosition;

      if (currentPosition <= maxPosition && duration > Duration.zero) {
        animationController?.duration = duration;
        animationController?.forward(from: 0.0);
      } else {
        animationController?.stop();
      }
    });
  }

  RefreshController refreshController = RefreshController();

  RxList<String> myDataList = <String>[].obs;
  void onRefresh() async {
    // Logika refresh data
    await Future.delayed(const Duration(
        seconds: 2)); // Contoh penundaan untuk simulasi refresh data
    myDataList.refresh();
    refreshController.refreshCompleted();
    // Update data setelah refresh selesai
    // ... (isikan logika pembaruan data Anda di sini)
  }

  void onLoading() async {
    // Logika load more data
    await Future.delayed(const Duration(
        seconds: 2)); // Contoh penundaan untuk simulasi load more data
    myDataList.refresh();
    refreshController.loadComplete();
    // Load more data selesai
    // ... (isikan logika load more data Anda di sini)
  }

  RxString text = "".obs;
  List<String> sentences = [
    "Mau ngapain hari ini ?",
    "Kamu mau makan ?",
    "Atau butuh sesuatu ?",
    "Semua nya ada disini !!"
  ];
  int currentIndex = 0;

  void changeText() async {
    String newText = sentences[currentIndex];
    for (int i = 0; i < newText.length; i++) {
      await Future.delayed(const Duration(milliseconds: 200));
      text.value = newText.substring(0, i + 1);
    }

    currentIndex++;
    if (currentIndex >= sentences.length) {
      currentIndex = 0;
    }
    await Future.delayed(const Duration(seconds: 3));
    changeText();
  }

  @override
  void onClose() {
    refreshController.dispose();
    animationController?.dispose();
    super.onClose();
    scrollController.dispose();
  }
}
