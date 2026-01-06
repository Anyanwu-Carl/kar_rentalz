import 'package:car_rentalz/core/gen/fonts.gen.dart';
import 'package:car_rentalz/core/themes/colors.dart';
import 'package:car_rentalz/features/authentification_feature/presentation/screens/authentication_screen.dart';
import 'package:car_rentalz/features/onboarding_feature/presentation/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Car Rental App",
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          brightness: Brightness.dark,
        ),
        fontFamily: FontFamily.poppinsRegular,
        useMaterial3: true,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
      ),
      home: AuthenticationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
