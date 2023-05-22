import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../delivery_controller.dart';

class DeliveryFavoritePage extends GetView<DeliveryController> {
  const DeliveryFavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('DeliveryFavoritePage')),
        body: const SafeArea(child: Text('DeliveryFavoriteController')));
  }
}
