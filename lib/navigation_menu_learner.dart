import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skillswap/features/shop/screens/home_learner/home_learner.dart';

import 'features/personalization/screens/settings/settings.dart';
import 'features/personalization/screens/settings_learner/setting_learner.dart';
import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/notificaiton_learner/notificaiton_learner.dart';
import 'features/shop/screens/store/store.dart';
import 'features/shop/screens/wishlist/wishlist.dart';
import 'utils/constants/colors.dart';
import 'utils/helpers/helper_functions.dart';

class NavigationMenuLearner extends StatelessWidget {
  const NavigationMenuLearner({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: darkMode ? TColors.black : Colors.white,
            indicatorColor: darkMode
                ? TColors.white.withOpacity(0.1)
                : TColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              // NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              // NavigationDestination(
              //     icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(
                  icon: Icon(Iconsax.notification), label: 'Notification'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    // const HomeScreen(),
    const HomeLearner(),
    const NotificationLearner(),
    // const FavouriteScreen(),
    // const SettingsScreen(),
    const SettingLearner(),
  ];
}
