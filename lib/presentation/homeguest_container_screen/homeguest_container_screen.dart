import 'controller/homeguest_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:polban_news/core/app_export.dart';
import 'package:polban_news/presentation/homeguest_page/homeguest_page.dart';
import 'package:polban_news/widgets/custom_bottom_bar.dart';

class HomeguestContainerScreen extends GetWidget<HomeguestContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeguestPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeguestPage;
      case BottomBarEnum.Filter:
        return "/";
      case BottomBarEnum.Bookmark:
        return "/";
      case BottomBarEnum.Searchindigo900:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeguestPage:
        return HomeguestPage();
      default:
        return DefaultWidget();
    }
  }
}
