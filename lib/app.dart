import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';
import 'global/user_controller.dart';
import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      // themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      // darkTheme: TAppTheme.dartTheme,
      home: const OnBoardingScreen(),
    );
  }
}
