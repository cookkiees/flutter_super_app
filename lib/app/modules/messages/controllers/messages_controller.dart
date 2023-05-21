import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagesController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  var tabIndex = 0.obs;
  changeTabIndex(i) {
    tabIndex.value = i;
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }
}
