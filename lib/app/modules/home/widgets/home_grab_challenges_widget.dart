import 'package:flutter/material.dart';

class GrabChallengesWidget extends StatelessWidget {
  const GrabChallengesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Complete your challenges now",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 0.1),
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: double.infinity,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(14),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.green[50],
                    child: const Icon(
                      Icons.card_giftcard,
                      size: 32,
                      color: Colors.green,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Win GrabGifts Food!",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Ends on 31 May 2023",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Accept this Challenge",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
