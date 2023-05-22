import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../theme/utils/my_colors.dart';
import '../../../controller/home_controller.dart';

class TransportAppBarWidget extends GetView<HomeController> {
  const TransportAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 220,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back,
          size: 24.0,
          color: Colors.black,
        ),
      ),
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Transport',
          style: TextStyle(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 172, 239, 179),
                Color.fromARGB(255, 190, 249, 214)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text("Where you're going. let's get\nyou there!"),
              )),
        ),
      ),
      actions: [
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              minimumSize: const Size(100, 30),
              backgroundColor: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            icon: const Icon(
              Icons.map_outlined,
              color: Colors.black,
            ),
            label: const Text(
              'Map',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(width: 16),
      ],
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 80),
        child: SizedBox(
          height: 100,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 172, 239, 179),
                          Color.fromARGB(255, 190, 249, 214)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        cursorColor: MyColors.green,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Where to?',
                          hintStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                          prefixIcon: const Icon(Icons.location_on,
                              color: Colors.red, size: 28),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
