import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:untitled1/app/until/color_contants.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 10,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomAppBarItem(
                  sourceImage: "assets/home/buttom_menu/home.png",
                  page: 0,
                  context,
                  label: "Home",
                ),
                _bottomAppBarItem(
                    sourceImage: "assets/home/buttom_menu/attandance.png",
                    page: 1,
                    context,
                    label: "Attendance"),
                _bottomAppBarItem(
                    sourceImage: "assets/home/buttom_menu/class.png",
                    page: 2,
                    context,
                    label: "Class"),
                _bottomAppBarItem(
                    sourceImage: "assets/home/buttom_menu/more.png",
                    page: 3,
                    context,
                    label: "More"),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller.pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: controller.animateToTab,
        children: [...controller.pages],
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required sourceImage, required page, required label}) {
    return ZoomTapAnimation(
      onTap: () => controller.goToTab(page),
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30,
              width: 30,
              child: FittedBox(
                fit: BoxFit.cover,
                child: ImageIcon(
                  AssetImage(sourceImage),
                  color: controller.currentPage == page
                        ? Colors.black
                        : Colors.grey,
                ),
              ),
            ),
            // Icon(
            //   icon,
            //   color: controller.currentPage == page
            //       ? ColorConstants.appColors
            //       : Colors.grey,
            //   size: 20,
            // ),
            Text(
              label,
              style: TextStyle(
                  color: controller.currentPage == page
                      ? ColorConstants.appColors
                      : Colors.grey,
                  fontSize: 13,
                  fontWeight:
                      controller.currentPage == page ? FontWeight.w600 : null),
            ),
          ],
        ),
      ),
    );
  }
}
