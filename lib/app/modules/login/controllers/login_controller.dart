import 'package:get/get.dart';
import 'package:untitled1/app/routes/app_pages.dart';

class LoginController extends GetxController {

  RxBool isValidInput = true.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    isValidInput.value = true;
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

  Future<void> login() async {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 2), () => {
    });
    await Future.delayed(
      const Duration(seconds: 2),
          () => {},
    );
    isLoading.value = false;
    update();
    Get.showSnackbar(
      GetSnackBar(
        message: 'Login berhasil...',
        duration: const Duration(seconds: 1),
      ),
    );
    Get.toNamed(Routes.HOME);
  }

}
