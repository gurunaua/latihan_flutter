
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/app/modules/home/views/tab_view/cart_tab.dart';
import 'package:untitled1/app/modules/home/views/tab_view/home_tab.dart';
import 'package:untitled1/app/modules/home/views/tab_view/more_tab.dart';
import 'package:untitled1/app/modules/home/views/tab_view/statistics_tab.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  late PageController  pageController;

  RxInt currentPage = 0.obs;
  RxBool isDarkTheme = false.obs;

  List<Widget> pages = [
    const HomeTab(),
    const CartTab(),
    const StatisticsTab(),
    const MoreTab(),
  ];


  ThemeMode get theme => Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void switchTheme(ThemeMode mode) {
    Get.changeThemeMode(mode);
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }
  void animateToTab(int page) {
    currentPage.value = page;
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

}
