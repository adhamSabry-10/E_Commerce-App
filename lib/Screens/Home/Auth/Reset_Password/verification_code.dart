import 'package:e_commerce_app/Controller/Auth%20Controller/reset_password_controller.dart';
import 'package:e_commerce_app/Routes/app_routes.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/main_button.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerificationCode extends StatelessWidget {
  final controller = Get.put(ResetPasswordController());

  VerificationCode({super.key});
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
                text: 'Enter 4 Digit Code',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              0.5.h.height,
              CustomText(
                text:
                    'Enter 4 digit code that your receive on your email (cody.fisher45@example.com).',
                color: AppColors.secondaryColor1,
                fontSize: 16,
              ),
              3.h.height,

              Center(
                child: SizedBox(
                  width: 80.w,
                  child: Pinput(
                    controller: controller.otp,
                    length: 4,
                    defaultPinTheme: PinTheme(
                      width: 70,
                      height: 6.5.h,
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffDFDFDF)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 60,
                      height: 7.h,
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
              ),
              2.h.height,
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    children: [
                      const TextSpan(text: "Email not received?"),
                      TextSpan(
                        text: " Resend code ",
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),

                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              15.h.height,
              CustomMainButton(
                title: 'Continue',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.resetPassword);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
