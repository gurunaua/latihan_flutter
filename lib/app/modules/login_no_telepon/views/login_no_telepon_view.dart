import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_no_telepon_controller.dart';

class LoginNoTeleponView extends GetView<LoginNoTeleponController> {
  const LoginNoTeleponView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Obx(() {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  "Dengan no telepon",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: controller.isValidInput.isTrue
                                ? Colors.red
                                : Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "cth: 0812345678"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: controller.isValidInput.value,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.warning,
                        color: Colors.red,
                      ),
                      SizedBox(width: 10),
                      Text("No telepon tidak terdaftar",
                          style: TextStyle(color: Colors.red))
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.kirmOtp();
                      },
                      child: !controller.isLoading.value
                          ? Text(
                              'Kirim OTP',
                              style: TextStyle(fontSize: 15),
                            )
                          : CircularProgressIndicator(
                              color: Colors.white,
                            ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.grey),
                        foregroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black),
                        minimumSize: MaterialStatePropertyAll<Size>(
                            Size(double.maxFinite, 50)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.black;
                            if (states.contains(MaterialState.focused))
                              return Colors.black54;
                            if (states.contains(MaterialState.hovered))
                              return Colors.black38;

                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
