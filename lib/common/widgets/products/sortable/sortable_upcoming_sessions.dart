import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/screens/home_educator/widgets/grid_up_coming_sessions.dart';
import '../../../../features/shop/screens/home_educator/widgets/up_coming_sessions_list.dart';
import '../../../../utils/constants/sizes.dart';

class SortableUpComingSessions extends StatelessWidget {
  const SortableUpComingSessions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'latest',
            'time ascending',
            'time descending',
          ]
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        // sessions
        UpComingSessions(
          itemCount: 4,
          itemBuilder: (_, index) => const UpComingSessionsList(),
        ),
      ],
    );
  }
}
