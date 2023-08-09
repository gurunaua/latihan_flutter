import 'package:get/get.dart';

import '../controllers/login_no_telepon_controller.dart';

class LoginNoTeleponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginNoTeleponController>(
      () => LoginNoTeleponController(),
    );
  }
}
