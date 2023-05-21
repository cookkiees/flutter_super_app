import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'home_interactor.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HomeInteractor homeInteractor = Get.find<HomeInteractor>();

  // Menu item progres indicator animation
  var scrollController = ScrollController();
  var indicatorPosition = 0.0.obs;
  AnimationController? animationController;
  Animation<double>? animation;
  @override
  void onInit() {
    super.onInit();
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

  @override
  void onClose() {
    refreshController.dispose();
    animationController?.dispose();
    super.onClose();
    scrollController.dispose();
  }
}
