import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../delivery_controller.dart';

class DeliveryOrderPage extends GetView<DeliveryController> {
  const DeliveryOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DeliveryOrderPage',
        ),
      ),
      body: const SafeArea(
        child: Text(
          'DeliveryOrderController',
        ),
      ),
    );
  }
}
