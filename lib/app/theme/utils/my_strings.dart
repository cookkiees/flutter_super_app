import 'package:flutter/material.dart';

class MyStrings {
  static const title = 'kokoko';

  static RichText privacyAndPolicy = RichText(
    text: const TextSpan(
      text: 'By condition, you confirm you\'ve read and agree to our ',
      style: TextStyle(color: Colors.black, fontSize: 12),
      children: [
        TextSpan(
          text: 'Terms of Service',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: ' and ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        TextSpan(
          text: 'Privacy Notice',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text:
              ' on how we collect, use, disclose, and process your personal data',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    ),
  );

  static const List<String> url = [
    'assets/icons/home-icon-Mart.svg',
    'assets/icons/home-icon-Food.svg',
    'assets/icons/home-icon-Assistant.svg',
    'assets/icons/home-icon-Transport.svg',
    'assets/icons/home-icon-Delivery.svg',
    'assets/icons/home-icon-Gift.svg',
    'assets/icons/home-icon-Hotels.svg',
    'assets/icons/home-icon-Insurance.svg',
    'assets/icons/home-icon-Pay.svg',
    'assets/icons/home-icon-Personal-Loan (1).svg',
    'assets/icons/home-icon-Rent.svg',
    'assets/icons/home-icon-Rewards.svg',
  ];

  static const List<String> name = [
    'Mart',
    'Food',
    'Bike',
    'Car',
    'Express',
    'Gift',
    'Hotels',
    'Insurance',
    'Pay',
    'Personal Loan',
    'Rent',
    'Rewards',
  ];
}
