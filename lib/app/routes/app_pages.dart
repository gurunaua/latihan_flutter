import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login_no_telepon/bindings/login_no_telepon_binding.dart';
import '../modules/login_no_telepon/views/login_no_telepon_view.dart';
import '../modules/login_otp_verifikasi/bindings/login_otp_verifikasi_binding.dart';
import '../modules/login_otp_verifikasi/views/login_otp_verifikasi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_NO_TELEPON,
      page: () => const LoginNoTeleponView(),
      binding: LoginNoTeleponBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_OTP_VERIFIKASI,
      page: () => const LoginOtpVerifikasiView(),
      binding: LoginOtpVerifikasiBinding(),
    ),
  ];
}
