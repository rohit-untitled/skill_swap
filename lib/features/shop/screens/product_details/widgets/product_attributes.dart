import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // select attributes and description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: const Column(
            children: [
              TSectionHeading(title: 'Description', showActionButton: false),
              SizedBox(height: TSizes.spaceBtwItems),
              ReadMoreText(
                'This is a product dexcription of this educator, learn various skills to sustain in life from this educator. More things will be added very soon. this app is created by rohit sharma',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: ' show more',
                trimExpandedText: ' less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
