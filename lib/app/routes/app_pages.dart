import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_screen/bindings/main_screen_binding.dart';
import '../modules/main_screen/views/main_screen_view.dart';
import '../modules/onboarding_2screen/bindings/onboarding_2screen_binding.dart';
import '../modules/onboarding_2screen/views/onboarding_2screen_view.dart';
import '../modules/onboarding_3screen/bindings/onboarding_3screen_binding.dart';
import '../modules/onboarding_3screen/views/onboarding_3screen_view.dart';
import '../modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import '../modules/onboarding_screen/views/onboarding_screen_view.dart';
import '../modules/otp_screen/bindings/otp_screen_binding.dart';
import '../modules/otp_screen/views/otp_screen_view.dart';
import '../modules/screen_ui/bindings/screen_ui_binding.dart';
import '../modules/screen_ui/views/screen_ui_view.dart';
import '../modules/signin_screen/bindings/signin_screen_binding.dart';
import '../modules/signin_screen/views/signin_screen_view.dart';
import '../modules/signup_screen/bindings/signup_screen_binding.dart';
import '../modules/signup_screen/views/signup_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => const OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN_SCREEN,
      page: () => const SigninScreenView(),
      binding: SigninScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_SCREEN,
      page: () => const SignupScreenView(),
      binding: SignupScreenBinding(),
    ),
    GetPage(
      name: _Paths.OTP_SCREEN,
      page: () => const OtpScreenView(),
      binding: OtpScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_2SCREEN,
      page: () => const Onboarding2screenView(),
      binding: Onboarding2screenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_3SCREEN,
      page: () => const Onboarding3screenView(),
      binding: Onboarding3screenBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => const MainScreenView(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Paths.SCREEN_UI,
      page: () => const ScreenUiView(tabController: null,),
      binding: ScreenUiBinding(),
    ),
  ];
}
