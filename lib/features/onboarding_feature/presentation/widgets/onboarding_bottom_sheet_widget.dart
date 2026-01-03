import 'package:car_rentalz/core/themes/colors.dart';
import 'package:car_rentalz/core/themes/dimensions.dart';
import 'package:flutter/material.dart';

class OnboardingBottomSheetWidget extends StatelessWidget {
  const OnboardingBottomSheetWidget({super.key, required this.position});

  final int position;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.padding,
        vertical: Dimens.largePadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (position == 0)
            SizedBox(width: 90.0)
          else
            SizedBox(
              width: 90.0,
              child: TextButton(onPressed: () {}, child: Text("Previous")),
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
                  child: Container(
                    margin: EdgeInsets.all(Dimens.smallPadding),
                    child: Ink(
                      width: 24.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: index <= position
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
            onPressed: () {},
            child: Text(position == 3 ? "Enter" : "Next"),
          ),
        ],
      ),
    );
  }
}
