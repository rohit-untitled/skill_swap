
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../../utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Nike',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(
          TSizes.defaultSpace,
        ),
        child: Column(
          children: [
            //brand details
            TBrandCard(showBorder: true),
            SizedBox(height: TSizes.spaceBtwSections),
            TSortableProducts(),
          ],
        ),
      ),
    );
  }
}
