import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:skillswap/utils/constants/sizes.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../navigation_menu.dart';
import 'widgets/option_buttons.dart';
import 'widgets/option_header.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            // logo, title and sub-title
            const OptionHeader(),
            const SizedBox(height: TSizes.spaceBtwSections * 2),
            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OptionButtons(
                  heading: 'Learner',
                  onTap: () => Get.to(
                    () => const NavigationMenu(),
                  ),
                ),
                OptionButtons(
                  heading: 'Educator',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
