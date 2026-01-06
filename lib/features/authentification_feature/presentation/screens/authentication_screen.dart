import 'package:car_rentalz/core/gen/fonts.gen.dart';
import 'package:car_rentalz/core/themes/colors.dart';
import 'package:car_rentalz/core/themes/dimensions.dart';
import 'package:car_rentalz/core/utilities/check_device_size.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: AlignmentGeometry.bottomCenter,
            children: [
              // IMAGES
              SizedBox(
                height: 500,
                child: Image.asset(
                  "assets/images/iron-ground.png",
                  fit: BoxFit.none,
                ),
              ),
              Positioned(
                bottom: 200,
                left: checkDesktopSize(context) ? null : 0,
                child: Image.asset("assets/images/maserati.png"),
              ),
              Positioned(top: 0, child: Container(width: 500)),

              // AUTH PAGE HEADER
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Dimens.largePadding,
                ),
                child: Column(
                  children: [
                    Text(
                      "Welcome to the",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.extraLargePadding,
                        fontFamily: FontFamily.poppinsBold,
                      ),
                    ),
                    Text(
                      "Car Rental App",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.veryLargePadding,
                        fontFamily: FontFamily.poppinsBold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      "choose your authentication method to continue",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    // EMAIL BUTTON
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Continue with Email",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(
                        Icons.email_outlined,
                        fontWeight: FontWeight.bold,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: AppColors.primaryColor,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        fixedSize: Size(450, 60),
                      ),
                    ),

                    SizedBox(height: 10),

                    // EMAIL BUTTON
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Continue with mobile number",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(
                        Icons.phone_outlined,
                        fontWeight: FontWeight.bold,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: AppColors.secondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(15),
                        ),
                        fixedSize: Size(450, 60),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
