import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/theme/utils/my_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widgets/rewards_appbar_widget.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 160),
        child: RewardsAppbarWidget(),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            children: [
              Container(
                height: 136,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 100.0,
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: 100.0,
                          child: SvgPicture.asset(
                            'assets/icons/ovo.svg',
                            height: 70,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Activate OVO get more from GrabRewards',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                'GrabRewards now use OVO Points Activate OVO to earn OVO Points now.\nLearn more',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 32),
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16),
                  itemBuilder: (BuildContext context, int index) {
                    var icon = [
                      Icons.star_border,
                      Icons.confirmation_num_outlined,
                      Icons.wine_bar_outlined,
                      Icons.shopping_bag_outlined,
                      Icons.construction_outlined,
                      Icons.flight_outlined,
                      Icons.local_offer_outlined,
                    ];
                    var title = [
                      'All',
                      'Play',
                      'Food & Beverage',
                      'Shopping',
                      'Services',
                      'Travel',
                      'Others',
                    ];
                    return Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Container(
                        width: 60,
                        height: 100,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.grey[100],
                              child: Icon(
                                icon[index],
                                color: MyColors.green,
                                size: 24,
                              ),
                            ),
                            Text(
                              title[index],
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const GrabUnlimitedListWidget(
                title: 'GrabUnlimited',
                note: '(Only with GrabUnlimited) Rp10.000 off Vidio Platinum',
              ),
              const GrabUnlimitedListWidget(
                title: 'Grab',
                note: 'Diskon Pulsa/Paket Data Rp50rb',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GrabUnlimitedListWidget extends StatelessWidget {
  const GrabUnlimitedListWidget({
    super.key,
    required this.title,
    required this.note,
  });
  final String title;
  final String note;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 24, bottom: 16, right: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 240,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ListView.builder(
            itemCount: 3,
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                          ),
                        ),
                        child: Image.asset('assets/images/grab.png'),
                      ),
                      Container(
                        height: 94,
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              note,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                            ),
                            const Text(
                              'Airtime',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                text: '1 ',
                                style: TextStyle(color: MyColors.green),
                                children: [
                                  TextSpan(
                                    text: 'OVO Points',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
