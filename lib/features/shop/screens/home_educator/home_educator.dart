import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../home/widgets/home_appbar_educator.dart';
import '../home/widgets/promo_slider.dart';
import '../upcoming_sessions/up_coming_sessions.dart';
import 'widgets/grid_up_coming_sessions.dart';
import 'widgets/up_coming_sessions_list.dart';

class HomeEducator extends StatelessWidget {
  const HomeEducator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // app bar
                  EducatorHomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // search bar
                  TSearchContainer(
                    text: 'Search upcoming, past sessions...',
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // heading upcoming sessions
                  TSectionHeading(
                    title: 'Upcoming Sessions',
                    onPressed: () => Get.to(() => const AllUpComingSessions()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  UpComingSessions(
                    itemCount: 4,
                    itemBuilder: (_, index) => const UpComingSessionsList(),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // heading upcoming sessions
                  TSectionHeading(
                    title: 'Past Sessions',
                    onPressed: () => Get.to(() => const AllUpComingSessions()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
