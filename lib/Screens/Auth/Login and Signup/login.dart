import 'package:e_commerce_app/Controller/Auth%20Controller/auth_controller.dart';
import 'package:e_commerce_app/Routes/app_routes.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_textfield.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/main_button.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthController controller = Get.put(AuthController());

  void validateInput() {
    setState(() {
      controller.isEmailValid = RegExp(
        r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
      ).hasMatch(controller.loginEmail.text.trim());
      controller.isPasswordValid =
          controller.loginPassword.text.trim().length >= 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              7.h.height,
              CustomText(
                text: 'Login to your account',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: 'It’s great to see you again.',
                color: AppColors.subtitleColor,
              ),
              2.h.height,

              CustomTextField(
                titles: 'Email',
                controller: controller.loginEmail,
                hintText: "Enter your email address",
                isValid: controller.isEmailValid,
                onChanged: (_) => validateInput(),
              ),
              2.h.height,

              Obx(
                () => CustomTextField(
                  obscur: controller.passwordShow.value,
                  titles: 'Password',
                  controller: controller.loginPassword,
                  hintText: "Enter your password",
                  isValid: controller.isPasswordValid,
                  onChanged: (_) => validateInput(),
                  lasticon: GestureDetector(
                    onTap: () {
                      controller.passwordShow.value == true
                          ? controller.passwordShow.value = false
                          : controller.passwordShow.value = true;
                    },
                    child: Icon(
                      color: AppColors.gray1,
                      controller.passwordShow.value == false
                          ? Icons.remove_red_eye
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              2.h.height,
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 13, color: Colors.black),
                  children: [
                    const TextSpan(text: "Forgot your password? "),
                    TextSpan(
                      text: "Reset your password",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                context,
                                AppRoutes.forgotPassword,
                              );
                            },
                    ),
                  ],
                ),
              ),
              4.h.height,
              MainCustomButton(
                title: "Login",
                backColour:
                    controller.isEmailValid && controller.isPasswordValid
                        ? AppColors.black
                        : AppColors.gray2,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.bottomNavBar);
                },
              ),
              2.h.height,
              Row(
                children: [
                  Expanded(
                    child: Container(height: 0.2.h, color: AppColors.gray3),
                  ),
                  1.w.width,
                  CustomText(text: "or", color: AppColors.gray1, fontSize: 18),
                  1.w.width,
                  Expanded(
                    child: Container(height: 0.2.h, color: AppColors.gray3),
                  ),
                ],
              ),
              2.h.height,
              MainCustomButton(
                title: "Sign Up with Google",
                image: AppImages.google,
                onTap: () {},
              ),
              2.h.height,
              MainCustomButton(
                title: "Sign Up with Facebook",
                backColour: AppColors.blue,
                image: AppImages.facebook,
                onTap: () {},
              ),
              2.h.height,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  children: [
                    const TextSpan(text: "Don’t have an account? "),
                    TextSpan(
                      text: " Join",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                    ),
                  ],
                ),
              ),
            ),
          ),
          3.h.height,
        ],
      ),
    );
  }
}
