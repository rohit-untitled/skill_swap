import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../home/widgets/home_appbar.dart';
import '../home/widgets/home_categories.dart';
import '../home/widgets/promo_slider.dart';

class HomeEducator extends StatelessWidget {
  const HomeEducator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // app bar
                  THomeAppBar(),
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
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  // heading
                  TSectionHeading(
                    title: 'Upcoming Sessions',
                    showActionButton: false,
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
