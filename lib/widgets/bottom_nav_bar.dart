import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:readme_ebook_mobile/controllers/navbarcontroller.dart';

class BottomPersistentNavBar extends StatelessWidget {
  const BottomPersistentNavBar({
    super.key,
    required this.buildScreens,
    required this.navBarsItems,
  });

  final List<Widget> buildScreens;
  final List<PersistentBottomNavBarItem> navBarsItems;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
        init: NavBarController(),
        builder: (controller) {
          return PersistentTabView(
            context,
            controller: controller.controller.value,
            screens: buildScreens,
            items: navBarsItems,
            confineInSafeArea: true,
            backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
            hideNavigationBarWhenKeyboardShows: true,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style10,
          );
        });
  }
}
