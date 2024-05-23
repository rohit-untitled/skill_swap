import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: const Stack(
          children: [
            // main large image
            SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Center(
                      child:
                          Image(image: AssetImage(TImages.userProfileImage3))),
                )),

            // Image Slider
            // Positioned(
            //   right: 0,
            //   bottom: 30,
            //   left: TSizes.defaultSpace,
            //   child: SizedBox(
            //     height: 80,
            //     child: ListView.separated(
            //       separatorBuilder: (_, __) =>
            //           const SizedBox(width: TSizes.spaceBtwItems),
            //       itemCount: 6,
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       physics: const AlwaysScrollableScrollPhysics(),
            //       itemBuilder: (_, index) => TRoundedImage(
            //         width: 80,
            //         backgroundColor:
            //             dark ? TColors.dark : TColors.white,
            //         border: Border.all(color: TColors.primary),
            //         padding: const EdgeInsets.all(TSizes.sm),
            //         imageUrl: TImages.productImage3,
            //       ),
            //     ),
            //   ),
            // ),

            //Appbar icons
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
