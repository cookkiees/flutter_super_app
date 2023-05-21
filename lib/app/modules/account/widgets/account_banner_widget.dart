import 'package:flutter/material.dart';

class AccountBanner extends StatelessWidget {
  const AccountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 16,
      ),
      margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.email,
            size: 24.0,
            color: Colors.blue[500],
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Let's make sure you never lose access to your\nacccount.",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Set up recovery email",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[500],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
