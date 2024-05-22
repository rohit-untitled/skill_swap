import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skillswap/navigation_menu_learner.dart';
import 'package:connectivity_plus/connectivity_plus.dart'; // Import connectivity_plus
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../password_configuration/forget_password.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../../../global/user_controller.dart'; // Adjust the path accordingly

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class LearnerLoginForm extends StatelessWidget {
  const LearnerLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.find<UserController>();

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Username
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.username),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
              obscureText: true,
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            // Remember me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                // Forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  String username = usernameController.text;
                  String password = passwordController.text;
                  String url = 'https://skillswap-3pae.onrender.com/login/';

                  Map<String, String> loginData = {
                    'username': username,
                    'password': password,
                  };

                  // Check for network connectivity
                  var connectivityResult = await (Connectivity().checkConnectivity());
                  if (connectivityResult == ConnectivityResult.none) {
                    print('No internet connection');
                    // Optionally, display an error message to the user
                    Get.snackbar('Error', 'No internet connection');
                    return;
                  }

                  try {
                    final response = await http.post(
                      Uri.parse(url),
                      headers: {"Content-Type": "application/json"},
                      body: jsonEncode(loginData),
                    );

                    if (response.statusCode == 200) {
                      // Set the username in the UserController
                      userController.setUsername(username);

                      // Navigate to NavigationMenuLearner page
                      Get.to(() => const NavigationMenuLearner());
                    } else {
                      print('Login failed: ${response.statusCode}');
                      // Optionally, display an error message to the user
                      Get.snackbar('Error', 'Login failed: ${response.statusCode}');
                    }
                  } catch (e) {
                    print('An error occurred: $e');
                    // Optionally, display an error message to the user
                    Get.snackbar('Error', 'An error occurred: $e');
                  }
                },
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
