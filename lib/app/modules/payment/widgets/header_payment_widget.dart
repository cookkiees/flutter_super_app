import 'package:flutter/material.dart';

class HeaderPaymentWidget extends StatelessWidget {
  const HeaderPaymentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.grey[50],
      padding: const EdgeInsets.only(left: 16, top: 70, right: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.settings_outlined, size: 26.0),
            ],
          ),
          SizedBox(height: 12),
          Text(
            'Simple flexible everyday\npayments',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
