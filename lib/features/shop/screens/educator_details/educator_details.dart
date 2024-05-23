import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skillswap/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:skillswap/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:skillswap/features/shop/screens/time_slots/timeslot_screen.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../product_details/widgets/product_detail_image_slider.dart';
import '../product_details/widgets/rating_share_widget.dart';
import '../product_reviews/product_reviews.dart';

class EducatorDetails extends StatelessWidget {
  const EducatorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const TBottomAddToCart(),
      // body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
            const TProductImageSlider(),

            //product details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Rating and share button
                  const TRatingAndShare(),
                  //price title,stack and brand
                  const TProductMetaData(),
                  //attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(
                          () => const TimeSlots(),
                        ),
                        child: const Text('Book your time slots'),
                      )),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                          title: 'Reviews(199)',
                          showActionButton: false,
                          onPressed: () {}),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
