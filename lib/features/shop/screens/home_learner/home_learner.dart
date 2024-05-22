import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillswap/features/shop/screens/home/widgets/home_categories.dart';
import 'package:skillswap/features/shop/screens/home_learner/fetch_api/fetch_api.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../models/educators.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../all_products/all_products.dart';
import '../home/widgets/home_appbar.dart';
import '../home/widgets/promo_slider.dart';

class HomeLearner extends StatelessWidget {
  const HomeLearner({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiService apiService = ApiService();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // app bar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // search bar
                  TSearchContainer(
                    text: 'Search for educators, skills...',
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // heading
                        TSectionHeading(
                          title: 'Popular skills to learn',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        // categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // promo slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // headings
                  TSectionHeading(
                    title: 'Popular Educators',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Educators lists
                  FutureBuilder<List<Educator>>(
                    future: apiService.fetchEducators(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return const Center(child: Text('No educators found'));
                      } else {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final educator = snapshot.data![index];
                            return Card(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: ListTile(
                                title: Text(educator.name),
                                subtitle: Text(educator.description),
                                trailing: Text('\$${educator.charges.toStringAsFixed(2)}'),
                                onTap: () {
                                  // Handle tap
                                },
                              ),
                            );
                          },
                        );
                      }
                    },
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
