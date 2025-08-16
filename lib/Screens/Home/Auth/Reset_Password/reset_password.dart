import 'package:e_commerce_app/Controller/Auth%20Controller/reset_password_controller.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_textfield.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/main_button.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
  final controller = Get.put(ResetPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              7.h.height,
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              2.h.height,
              CustomText(
                text: 'Reset Password',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              0.5.h.height,
              CustomText(
                text:
                    'Set the new password for your account so you can login and access all the features.',
                color: AppColors.secondaryColor1,
                fontSize: 16,
              ),
              3.h.height,
              Obx(
                () => CustomTextField(
                  obscur: controller.passwordShow.value,
                  titles: 'Password',
                  controller: controller.password,
                  hintText: "Enter your password",
                  lasticon: GestureDetector(
                    onTap: () {
                      controller.passwordShow.value == true
                          ? controller.passwordShow.value = false
                          : controller.passwordShow.value = true;
                    },
                    child: Icon(
                      controller.passwordShow.value == false
                          ? Icons.remove_red_eye
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              1.h.height,
              Obx(
                () => CustomTextField(
                  obscur: controller.confirmPasswordShow.value,
                  titles: 'Confirm Password',
                  controller: controller.confirmPassword,
                  hintText: "Enter your confirm password",
                  lasticon: GestureDetector(
                    onTap: () {
                      controller.confirmPasswordShow.value == true
                          ? controller.confirmPasswordShow.value = false
                          : controller.confirmPasswordShow.value = true;
                    },
                    child: Icon(
                      controller.confirmPasswordShow.value == false
                          ? Icons.remove_red_eye
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              15.h.height,
              CustomMainButton(
                title: 'Continue',
                onTap: () {
                  showPasswordChangedDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showPasswordChangedDialog(BuildContext context) {
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green.shade100,
                  child: Icon(
                    Icons.check_circle,
                    size: 40,
                    color: AppColors.green,
                  ),
                ),
                /////
                3.h.height,
                CustomText(
                  text: 'Password Changed!',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                1.h.height,
                CustomText(
                  text:
                      'You can now use your new password to login to your account.',
                  textAlign: TextAlign.center,
                  fontSize: 16,
                  color: AppColors.gray1,
                ),
                3.h.height,
                CustomMainButton(title: 'Login', onTap: () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}
