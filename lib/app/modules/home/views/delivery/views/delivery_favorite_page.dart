import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../delivery_controller.dart';

class DeliveryFavoritePage extends GetView<DeliveryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('DeliveryFavoritePage')),
        body: SafeArea(child: Text('DeliveryFavoriteController')));
  }
}
