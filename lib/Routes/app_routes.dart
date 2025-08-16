import 'package:e_commerce_app/Screens/Auth/Login%20and%20Signup/login.dart';
import 'package:e_commerce_app/Screens/Auth/Reset_Password/forgot_Password.dart';
import 'package:e_commerce_app/Screens/Auth/Reset_Password/reset_password.dart';
import 'package:e_commerce_app/Screens/Auth/Reset_Password/verification_code.dart';
import 'package:e_commerce_app/Screens/Auth/Login%20and%20Signup/signup.dart';
import 'package:e_commerce_app/Screens/Auth/OnBording/on_boarding.dart';
import 'package:e_commerce_app/Screens/Auth/OnBording/splash_screen.dart';
import 'package:e_commerce_app/Screens/Home/Account%20pages/Help%20Center/help_center.dart';
import 'package:e_commerce_app/Screens/Home/Account%20pages/Account%20Page/account_page.dart';
import 'package:e_commerce_app/Screens/Home/Cart%20Pages/my_cart.dart';
import 'package:e_commerce_app/Screens/Home/Saved%20Pages/ssave.dart';
import 'package:e_commerce_app/Screens/Home/Search%20Pages/search.dart';
import 'package:e_commerce_app/Screens/Home/Widgets/botom_nav_bar.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // Auth Screens
  static const String splashScreen = '/SplashScreen';
  static const String onbordingScreen = '/OnBoardingScreen';
  static const String signup = '/SignUp';
  static const String login = '/Login';
  static const String forgotPassword = '/ForgotPassword';
  static const String verificationCode = '/VerificationCode';
  static const String resetPassword = '/ResetPassword';
  // Home Screens
  static const String bottomNavBar = '/BottomNavBar';
  // static const String login = '/Login';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // Search Screens
  static const String searchPage = '/SearchPage';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // Saved Screens
  static const String savedPage = '/SavedPage';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // Cart Screens
  static const String cartPage = '/CartPage';
  // static const String login = '/Login';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // Accounts Screens
  static const String accountPage = '/AccountPage';
  static const String helpCenterPage = '/HelpCenterPage';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';

  static Map<String, WidgetBuilder> get routes => {
    splashScreen: (_) => SplashScreen(),
    onbordingScreen: (_) => OnBoardingScreen(),
    signup: (_) => SignUp(),
    login: (_) => Login(),
    forgotPassword: (_) => ForgotPassword(),
    verificationCode: (_) => VerificationCode(),
    resetPassword: (_) => ResetPassword(),
    // Home Screens
    bottomNavBar: (_) => BottomNavBar(),
    // Search Screens
    searchPage: (_) => SearchPage(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // Saved Screens
    savedPage: (_) => SavedPage(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // Cart Screens
    cartPage: (_) => CartPage(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // Account Screens
    accountPage: (_) => AccountPage(),
    helpCenterPage: (_) => HelpCenterPage(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
  };
}
