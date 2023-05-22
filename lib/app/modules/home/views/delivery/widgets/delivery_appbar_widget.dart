import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../theme/utils/my_colors.dart';
import '../../../controller/home_controller.dart';

class DeliveryAppBarWidget extends GetView<HomeController> {
  const DeliveryAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 150,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back,
          size: 24.0,
        ),
      ),
      title: const DeliveryTitleWidget(),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.greenAccent, Color(0xFF86D7FF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
      ),
      actions: [
        DeliveryIconButtonWidget(
          icon: Icons.favorite_border,
          onTap: () {},
        ),
        const SizedBox(width: 12),
        DeliveryIconButtonWidget(
          icon: Icons.receipt,
          onTap: () {},
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
                        colors: [Colors.greenAccent, Color(0xFF86D7FF)],
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
                    child: Obx(() => TextFormField(
                          cursorColor: MyColors.green,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: controller.text.value,
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixIcon: const Icon(Icons.search,
                                color: Colors.grey, size: 32),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeliveryTitleWidget extends StatelessWidget {
  const DeliveryTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DELIVER TO',
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            width: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Jalan Pasar Baru - Banda Buat',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DeliveryIconButtonWidget extends StatelessWidget {
  const DeliveryIconButtonWidget({
    super.key,
    this.onTap,
    required this.icon,
  });
  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: Colors.white12,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 26.0,
        ),
      ),
    );
  }
}
