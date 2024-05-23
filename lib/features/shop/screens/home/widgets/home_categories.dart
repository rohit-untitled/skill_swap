import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillswap/utils/constants/image_strings.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../sub_category/sub_categories.dart';
import '../api_services/banner_tag.dart';

class THomeCategories extends StatelessWidget {
  final List<Tag> tags;

  const THomeCategories({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: tags.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: TImages.shoeIcon,
              title: tags[index].name,
              onTap: () => Get.to(() => const SubCategoriesScreen()),
            );
          }),
    );
  }
}
