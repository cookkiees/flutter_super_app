import 'package:flutter/material.dart';

class CardProductItemWidget extends StatelessWidget {
  const CardProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(right: 16, top: 16),
        itemBuilder: (ctx, i) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 260,
              width: 180,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/images/food.jpg",
                      height: 130,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Thai food shrimp fried - Cilacap',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Row(
                          children: [
                            Text(
                              '2.5 km • ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Color(0xFFEFDE46),
                            ),
                            Text(
                              "4,5",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        (i == 0 || i == 1)
                            ? Container(
                                height: 20,
                                width: 100,
                                color: Colors.orange[50],
                                padding: const EdgeInsets.only(left: 4),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  (i == 0) ? "Discount 15%" : "Discount 20%",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink()
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
