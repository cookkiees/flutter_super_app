import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'transport_controller.dart';
import 'widgets/transport_appbar_widget.dart';

class TransportPage extends GetView<TransportController> {
  const TransportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          TransportAppBarWidget(),
        ],
      ),
    );
  }
}
