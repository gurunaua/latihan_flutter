import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled1/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hallo..!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Text(
                "Selamat datang...",
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
                    hintText: "Email"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: controller.isValidInput.isTrue
                            ? Colors.red
                            : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Password"),
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
                    Text("Email atau password salah",
                        style: TextStyle(color: Colors.red))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {controller.login();},
                child: !controller.isLoading.value
                    ? Text(
                  'Login',
                  style: TextStyle(fontSize: 15),
                )
                    : CircularProgressIndicator(
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
                  foregroundColor:
                      MaterialStatePropertyAll<Color>(Colors.black),
                  minimumSize: MaterialStatePropertyAll<Size>(
                      Size(double.maxFinite, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
            ],
          );
        }),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: ElevatedButton(
          onPressed: () {
              Get.toNamed(Routes.LOGIN_NO_TELEPON);
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black))),
          ),
          child: const Text(
            'Login dengan no telepon',
            style: TextStyle(height: 1, color: Colors.black, fontSize: 3),
          ),
        ),
      ),
    );
  }
}
