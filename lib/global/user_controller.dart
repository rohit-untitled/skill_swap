import 'package:get/get.dart';

class UserController extends GetxController {
  var username = ''.obs;

  void setUsername(String newUsername) {
    username.value = newUsername;
  }
}
