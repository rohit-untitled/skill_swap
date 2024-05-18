import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/appbar/tab_bar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../brands/all_brands.dart';
import 'widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              TCartCounterIcon(onPressed: () {}),
            ]),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Search bar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                          text: 'Search in Store',
                          padding: EdgeInsets.zero,
                          showBorder: true,
                          showBackground: false),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      // Featured brands

                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      // brand grid
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return TBrandCard(showBorder: false, onTap: () {});
                        },
                      ),
                    ],
                  ),
                ),

                // tabs
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electroincs')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },

          // body
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
          // body: Container(),
        ),
      ),
    );
  }
}
