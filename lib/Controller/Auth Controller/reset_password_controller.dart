import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final email = TextEditingController();
  final otp = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  RxBool passwordShow = false.obs;
  RxBool confirmPasswordShow = false.obs;
  RxBool isEmailValid = true.obs;
}
