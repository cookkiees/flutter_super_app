import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../delivery_controller.dart';

class DeliveryLocationPage extends GetView<DeliveryController> {
  const DeliveryLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliveryLocationPage'),
      ),
      body: const SafeArea(
        child: Text('DeliveryLocationController'),
      ),
    );
  }
}
