import 'package:get/get.dart';

import '../controllers/login_otp_verifikasi_controller.dart';

class LoginOtpVerifikasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginOtpVerifikasiController>(
      () => LoginOtpVerifikasiController(),
    );
  }
}
