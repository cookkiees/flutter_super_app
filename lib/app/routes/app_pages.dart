import 'package:flutter_super_app_1/app/modules/account/views/formorevalue/rewards/rewards_page.dart';
import 'package:flutter_super_app_1/app/modules/home/views/transport/transport_page.dart';
import 'package:get/get.dart';
//  Import local
import '../modules/account/account_page.dart';
import '../modules/account/controllers/account_binding.dart';
import '../modules/activity/activity_page.dart';
import '../modules/activity/controllers/avtivity_binding.dart';
import '../modules/authentication/authentication_binding.dart';
import '../modules/authentication/authentication_page.dart';
import '../modules/authentication/signin/getstarted/getstarted_page.dart';
import '../modules/authentication/signin/getstarted/verification_page.dart';
import '../modules/authentication/signin/signin_with_phone_page.dart';
import '../modules/home/controller/home_binding.dart';
import '../modules/home/home_page.dart';
import '../modules/home/views/delivery/delivery_page.dart';
import '../modules/home/views/search/search_page.dart';
import '../modules/main/controllers/main_binding.dart';
import '../modules/main/main_page.dart';
import '../modules/messages/controllers/messages_binding.dart';
import '../modules/messages/messages_page.dart';
import '../modules/onboarding/onboarding_page.dart';
import '../modules/payment/controllers/payment_binding.dart';
import '../modules/payment/payment_page.dart';
import 'app_routes.dart';

abstract class AppPages {
  static const initial = AppRoutes.initial;

  static var pages = [
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoardingPage(),
    ),
    GetPage(
      name: AppRoutes.authentication,
      page: () => const AuthenticationPage(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: AppRoutes.signInPhone,
      page: () => const SignInWithPhonePage(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: AppRoutes.verify,
      page: () => const VerificationPage(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: AppRoutes.getStarted,
      page: () => const GetStartedPage(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.search,
      page: () => const SearchPage(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.delivery,
      page: () => const DeliveryPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.transport,
      page: () => const TransportPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.activity,
      page: () => const ActivityPage(),
      binding: ActivityBinding(),
    ),
    GetPage(
      name: AppRoutes.payment,
      page: () => const PaymentPage(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: AppRoutes.messages,
      page: () => const MessagesPage(),
      binding: MessagesBinding(),
    ),
    GetPage(
      name: AppRoutes.account,
      page: () => const AccountPage(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: AppRoutes.rewards,
      page: () => const RewardsPage(),
      binding: AccountBinding(),
    ),
  ];
}
