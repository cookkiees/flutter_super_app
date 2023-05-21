import 'package:flutter/material.dart';

import '../../../theme/utils/my_colors.dart';

class AddPaymentCardWidget extends StatelessWidget {
  const AddPaymentCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 380,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.white,
          border: BorderDirectional(
            top: BorderSide(width: 0.2),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add a card',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Go cashless with a credit or debit card",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                  ),
                  icon: const Icon(
                    Icons.account_balance_wallet,
                    size: 24.0,
                    color: AppColors.green,
                  ),
                  label: const Text(
                    'Top up',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                  ),
                  icon: const Icon(
                    Icons.qr_code_2_outlined,
                    size: 24.0,
                    color: AppColors.green,
                  ),
                  label: const Text(
                    'Scan to pay',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const Divider(thickness: 1, height: 28)
          ],
        ),
      ),
    );
  }
}
