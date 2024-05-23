import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillswap/features/authentication/screens/educator_login/widgets/educator_login_form.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class EducatorLogin extends StatelessWidget {
  const EducatorLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // logo, title and sub-title
              // const TLoginHeader(),
              Text(
                'Educator Login',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              // Form
              const EducatorLoginForm(),
              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
