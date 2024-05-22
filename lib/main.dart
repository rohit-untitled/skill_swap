import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:skillswap/global/user_controller.dart';
import 'app.dart';

void main() {
  Get.put(UserController());
  //add widget binding
  //init local storage
  //await native splash
  //initialize firebase
  //initialize authentication
  runApp(const MyApp());
}
