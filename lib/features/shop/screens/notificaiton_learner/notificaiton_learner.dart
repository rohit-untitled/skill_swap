import 'package:flutter/material.dart';
import 'package:skillswap/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:skillswap/utils/constants/image_strings.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class NotificationLearner extends StatelessWidget {
  const NotificationLearner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const TSearchContainer(
                text: 'Search',
                padding: EdgeInsets.zero,
                showBorder: true,
                showBackground: false),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return TRoundedContainer(
                    width: double.infinity,
                    showBorder: true,
                    padding: const EdgeInsets.all(TSizes.sm),
                    backgroundColor: Colors.transparent,
                    borderColor: TColors.grey,
                    margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
                    child: ListTile(
                      leading: const Image(
                        image: AssetImage(TImages.userProfileImage1),
                      ),
                      title: const Text('Angilia Sam'),
                      subtitle: const Text('Plantings, python...'),
                      trailing: const Text(
                        'confirmed',
                        style: TextStyle(color: Colors.green),
                      ),
                      onTap: () {
                        // Handle onTap event
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
