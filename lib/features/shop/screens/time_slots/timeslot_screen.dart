import 'package:flutter/material.dart';
import 'package:skillswap/features/shop/screens/time_slots/widgets/timings_slots.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class TimeSlots extends StatelessWidget {
  const TimeSlots({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: TAppBar(
        title: Text(
          'Time Slots',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book your sessions with the educator from the below time slots',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              //time slots
              const Timings(selectedAddress: false),
              const Timings(selectedAddress: true),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                'Describe your query below',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
