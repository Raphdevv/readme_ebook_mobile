import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:readme_ebook_mobile/views/homescreen/homescreen.dart';
import 'package:readme_ebook_mobile/views/loginscreen/login_screen.dart';
import 'package:readme_ebook_mobile/views/profilescreen/profile_screen.dart';
import 'package:readme_ebook_mobile/widgets/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BottomPersistentNavBar(
      buildScreens: const [
        HomeScreen(),
        LoginScreen(),
      ],
      navBarsItems: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: ("Home"),
          activeColorPrimary: Theme.of(context).colorScheme.onTertiary,
          activeColorSecondary: Theme.of(context).colorScheme.primary,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: ("Profile"),
          activeColorPrimary: Theme.of(context).colorScheme.onTertiary,
          activeColorSecondary: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
