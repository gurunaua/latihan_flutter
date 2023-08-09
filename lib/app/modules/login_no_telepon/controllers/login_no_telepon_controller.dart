import 'dart:io';

import 'package:get/get.dart';
import 'package:untitled1/app/routes/app_pages.dart';

class LoginNoTeleponController extends GetxController {
  //TODO: Implement LoginNoTeleponController

  RxBool isValidInput = true.obs;
  RxBool isLoading = false.obs;

  RxBool isLoadingVerifikasi = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> kirmOtp() async {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 2), () => {
    });
    await Future.delayed(
      const Duration(seconds: 2),
          () => {},
    );
    isLoading.value = false;
    update();
    Get.toNamed(Routes.LOGIN_OTP_VERIFIKASI);
  }

}
