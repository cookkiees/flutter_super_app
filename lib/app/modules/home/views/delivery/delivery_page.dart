import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/grab_unlimited_widget.dart';
import 'delivery_controller.dart';
import 'widgets/delivery_appbar_widget.dart';

class DeliveryPage extends GetView<DeliveryController> {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const DeliveryAppBarWidget(),
          SliverToBoxAdapter(
            child: Container(
              height: 340,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 32),
              color: Colors.grey[100],
              child: ListView.builder(
                itemCount: 4,
                padding: const EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: (index == 0)
                        ? const GrabUnlimitedWidget()
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Container(
                              width: 160,
                              height: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 160.0,
                                    child: Image.asset(
                                      "assets/images/pizza.jpg",
                                      width: 160,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Container(
                                    height: 116.0,
                                    width: double.infinity,
                                    color: Colors.white,
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'PROMO',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        const Text(
                                          "Domino's Pizaa - Sutomo Padang",
                                          style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          '30 mins • 0.7 km',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        Container(
                                          height: 20,
                                          width: 70,
                                          color: Colors.orange[50],
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          alignment: Alignment.centerLeft,
                                          child: const Text(
                                            "HEMAT 60rb",
                                            style: TextStyle(
                                              fontSize: 10,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
