import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'delivery_controller.dart';
import 'widgets/delivery_appbar_widget.dart';

class DeliveryPage extends GetView<DeliveryController> {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          DeliveryAppBarWidget(),
        ],
      ),
    );
  }
}
