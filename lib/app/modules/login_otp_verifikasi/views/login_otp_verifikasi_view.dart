import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_otp_verifikasi_controller.dart';

class LoginOtpVerifikasiView extends GetView<LoginOtpVerifikasiController> {
  const LoginOtpVerifikasiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Verifikasi",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Text(
                    "Masukan kode verifikasi yang dikirim ke ",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const Text(
                    "085******1234",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 50,
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
                        hintText: "Kode UTP"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: controller.isValidInput.value,
                    child: const Row(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Kode UTP salah",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    // controller.kirmOtp();
                  },
                  child: !controller.isLoading.value
                      ? Text(
                    'Verifikasi',
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
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: ElevatedButton(
          onPressed: () {

          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black))),
          ),
          child: const Text(
            'Login dengan no telepon',
            style: TextStyle(height: 3, color: Colors.black, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
