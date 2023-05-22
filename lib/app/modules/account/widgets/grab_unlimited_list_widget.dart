import 'package:flutter/material.dart';

import '../../../theme/utils/my_colors.dart';

class GrabUnlimitedListWidget extends StatelessWidget {
  const GrabUnlimitedListWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
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
                            style: TextStyle(
                              color: MyColors.green,
                            ),
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
    );
  }
}
