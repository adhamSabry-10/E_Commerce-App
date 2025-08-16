import 'package:e_commerce_app/Routes/app_routes.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
          ),
        );
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E_Commerece App',
          routes: AppRoutes.routes,
          initialRoute: AppRoutes.splashScreen,
          theme: ThemeData(
            unselectedWidgetColor: AppColors.primaryColor1,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        );
      },
    );
  }
}
