
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillswap/features/shop/screens/checkout/checkout.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),

      // check out button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: TSizes.defaultSpace,
          right: TSizes.defaultSpace,
          bottom: TSizes.defaultSpace,
        ),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout \$ 256.0')),
      ),
    );
  }
}
