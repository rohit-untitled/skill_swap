import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../profile/profile.dart';

class SettingLearner extends StatelessWidget {
  const SettingLearner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //header

          TPrimaryHeaderContainer(
            child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Profile',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),

                // user profile card
                TUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),

                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),

          // body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Account setting
                const TSectionHeading(
                    title: 'Account Settings', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                TSettingsMenuTile(
                  icon: Icons.history,
                  title: 'History',
                  subtitle: 'See all classes you have attended',
                  // onTap: () => Get.to(() => const UserAddressScreen()),
                  onTap: () {},
                ),
                TSettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'Ratings',
                  subtitle: 'See your ratings and reviews',
                  // onTap: () => Get.to(() => const UserAddressScreen()),
                  onTap: () {},
                ),
                TSettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'Reviews Given',
                  subtitle: 'See all the reviews you have given',
                  // onTap: () => Get.to(() => const UserAddressScreen()),
                  onTap: () {},
                ),

                TSettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List all the discounted coupons'),
                TSettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message'),
                TSettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts'),

                // logout button
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Logout'),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
