import 'package:car_rentalz/core/gen/fonts.gen.dart';
import 'package:car_rentalz/core/themes/colors.dart';
import 'package:car_rentalz/core/themes/dimensions.dart';
import 'package:car_rentalz/features/onboarding_feature/data/local/sample_data.dart';
import 'package:flutter/material.dart';

class TitleAndDescriptionWidget extends StatelessWidget {
  const TitleAndDescriptionWidget({super.key, required this.position});

  final int position;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titles[position],
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: FontFamily.poppinsBold,
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: Dimens.extraLargePadding),

        Text(
          descriptions[position],
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: FontFamily.poppinsRegular,
            color: AppColors.secondaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
