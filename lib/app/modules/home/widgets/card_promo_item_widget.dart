import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(right: 16, top: 16),
        itemBuilder: (ctx, i) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 130,
                      width: 180,
                      color: const Color.fromARGB(255, 48, 48, 48),
                      child: Image.asset(
                        "assets/images/promo.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount is up to Rp.25k, let's order now",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
