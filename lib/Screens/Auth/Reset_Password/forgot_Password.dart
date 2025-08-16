import 'package:e_commerce_app/Controller/Auth%20Controller/reset_password_controller.dart';
import 'package:e_commerce_app/Routes/app_routes.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_textfield.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/main_button.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final controller = Get.put(ResetPasswordController());

  validateInput() {
    setState(() {
      controller.isEmailValid.value = RegExp(
        r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
      ).hasMatch(controller.email.text.trim());
    });
  }

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
                text: 'Forgot password',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              0.5.h.height,
              CustomText(
                text:
                    'Enter your email for the verification process. We will send 4 digits code to your email.',
                color: AppColors.secondaryColor1,
                fontSize: 16,
              ),
              3.h.height,
              CustomTextField(
                controller: controller.email,
                hintText: 'Enter your email address',
                titles: 'Email',
                isValid: controller.isEmailValid.value,
                onChanged: (_) => validateInput(),
              ),
              15.h.height,

              CustomMainButton(
                title: 'Send Code',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.verificationCode);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
