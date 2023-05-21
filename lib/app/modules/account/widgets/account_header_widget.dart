import 'package:flutter/material.dart';

import '../../../theme/utils/my_colors.dart';

class AccountHeaderWidget extends StatelessWidget {
  const AccountHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Stack(
            children: [
              const Icon(
                Icons.account_circle_rounded,
                color: AppColors.green,
                size: 100,
              ),
              Positioned(
                bottom: 12,
                right: 8,
                child: Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.edit,
                    size: 18,
                    color: Color.fromARGB(255, 30, 81, 34),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Ururu",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                icon: const Icon(
                  Icons.insights,
                  color: AppColors.green,
                ),
                label: Row(
                  children: [
                    Text(
                      '  Subscribe ',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.grey[700], size: 12),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
