import 'package:animate_do/animate_do.dart';
import 'package:car_rentalz/core/gen/fonts.gen.dart';
import 'package:car_rentalz/core/themes/colors.dart';
import 'package:car_rentalz/core/themes/dimensions.dart';
import 'package:car_rentalz/features/onboarding_feature/data/local/sample_data.dart';
import 'package:car_rentalz/features/onboarding_feature/presentation/bloc/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitleAndDescriptionWidget extends StatelessWidget {
  const TitleAndDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<OnboardingCubit>();
    return FadeInDown(
      delay: const Duration(milliseconds: 300),
      child: Column(
        children: [
          Text(
            titles[watch.state.position],
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: FontFamily.poppinsBold,
              color: AppColors.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: Dimens.extraLargePadding),

          Text(
            descriptions[watch.state.position],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: FontFamily.poppinsRegular,
              color: AppColors.secondaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
