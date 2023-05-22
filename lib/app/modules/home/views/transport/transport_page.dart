import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/theme/utils/my_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'transport_controller.dart';
import 'widgets/transport_appbar_widget.dart';

class TransportPage extends GetView<TransportController> {
  const TransportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          const TransportAppBarWidget(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                3,
                (index) => const Column(
                  children: [
                    ListTile(
                      dense: true,
                      leading: CircleAvatar(
                        radius: 14,
                        foregroundColor: Colors.white,
                        backgroundColor: MyColors.green,
                        child: Icon(Icons.location_on),
                      ),
                      title: Text(
                        "Minangkabau International Aiport",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      subtitle: Text(
                        "Jl,Mr Sutan M. Rasyid, Ketaping, Batang Anai, Padang ,Sumatera Brat",
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      trailing: Icon(
                        Icons.east,
                        size: 18.0,
                      ),
                    ),
                    Divider(indent: 16, endIndent: 16)
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'More ways to travel',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/home-icon-Rent.svg',
                          height: 40,
                        ),
                        const SizedBox(width: 16),
                        const Text(
                          "Hire a driver by the hour",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ride to Saved Places',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.blue[50],
                        child: const Icon(
                          Icons.east,
                          size: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) {
                          var icon = [
                            Icons.home,
                            Icons.work,
                            Icons.bookmark,
                          ];
                          var title = [
                            'Home',
                            'Work',
                            'New',
                          ];
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 34,
                                      backgroundColor: Colors.blue[50],
                                      child: Icon(
                                        icon[index],
                                        color: Colors.green[900],
                                        size: 32,
                                      ),
                                    ),
                                    const Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Text(title[index])
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
