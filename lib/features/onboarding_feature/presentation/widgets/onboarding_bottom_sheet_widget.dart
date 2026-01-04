import 'package:car_rentalz/core/themes/colors.dart';
import 'package:car_rentalz/core/themes/dimensions.dart';
import 'package:car_rentalz/features/onboarding_feature/presentation/bloc/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBottomSheetWidget extends StatelessWidget {
  const OnboardingBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<OnboardingCubit>();
    final read = context.read<OnboardingCubit>();
    return Container(
      height: 80.0,
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.padding,
        vertical: Dimens.largePadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (watch.state.position == 0)
            SizedBox(width: 90.0)
          else
            SizedBox(
              width: 90.0,
              child: TextButton(
                onPressed: () {
                  read.onPreviousPressed();
                },
                child: Text("Previous"),
              ),
            ),

          // PROGRESS INDICATOR
          SizedBox(
            height: 12.0,
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (final context, final index) {
                return InkWell(
                  onTap: () {
                    read.goToSpecificPosition(index);
                  },
                  borderRadius: BorderRadius.circular(Dimens.corners),
                  child: Container(
                    margin: EdgeInsets.all(Dimens.smallPadding),
                    child: Ink(
                      width: 24.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: index <= watch.state.position
                            ? AppColors.primaryColor
                            : AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(Dimens.corners),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // NEXT BUTTON
          TextButton(
            onPressed: () {
              read.onNextPressed();
            },
            child: Text(watch.state.position == 3 ? "Enter" : "Next"),
          ),
        ],
      ),
    );
  }
}
