import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/theme/utils/my_colors.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'controllers/payment_controller.dart';
import 'widgets/add_payment_card_widget.dart';
import 'widgets/header_payment_widget.dart';
import 'widgets/ovo_cash_widget.dart';

class PaymentPage extends GetView<PaymentController> {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    var title = [
      'Top up pulsa and PLN token',
      'Play on when you top up games',
      'Pay your bills anywhere',
      'Redeem your ovo points',
      'Insurance for everyday needs',
      'Save more with subscription plants',
      'Get your Danamon card',
    ];
    var color = const [
      Color(0xFF769DF8),
      Color(0xFF41AB44),
      Color(0xFF43ACD2),
      Color(0xFF8E40C5),
      Color(0xFF43ACD2),
      Color(0xFF43ACD2),
      Color(0xFF41AB44),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 600,
              width: double.infinity,
              child: Stack(
                children: [
                  HeaderPaymentWidget(),
                  AddPaymentCardWidget(),
                  OvoCashWidget(),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 16),
                  child: Text(
                    "Recommended for you",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: ListView.builder(
                    itemCount: title.length,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(right: 16),
                    itemBuilder: (ctx, i) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          height: 150,
                          width: 180,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: color[i],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            title[i],
                            style: const TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
                  child: Text(
                    "Recent transactions",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: Column(
                    children: [
                      Lottie.asset(
                        'assets/lottie/empty.json',
                        height: 250,
                        width: 250,
                        fit: BoxFit.fill,
                      ),
                      const Center(
                        child: Text(
                          "There's no recent activity to show here",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See past transactions',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
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
