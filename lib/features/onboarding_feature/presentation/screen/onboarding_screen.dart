import 'package:car_rentalz/core/themes/dimensions.dart';
import 'package:car_rentalz/core/utilities/check_device_size.dart';
import 'package:car_rentalz/core/widgets/app_svg_viewer.dart';
import 'package:car_rentalz/features/onboarding_feature/data/local/sample_data.dart';
import 'package:car_rentalz/features/onboarding_feature/presentation/widgets/onboarding_bottom_sheet_widget.dart';
import 'package:car_rentalz/features/onboarding_feature/presentation/widgets/title_and_description_widget.dart';
import 'package:flutter/material.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
      ),
      body: SafeArea(
        child: PageView.builder(
          itemCount: 4,
          itemBuilder: (final context, final position) {
            final size = MediaQuery.of(context).size;
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.largePadding,
              ),
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    margin: const EdgeInsets.only(top: Dimens.largePadding),
                    child: AppSvgViewer(
                      images[position],
                      width: checkVerySmallDeviceSize(context)
                          ? size.width
                          : Dimens.smallDeviceBreakPoint,
                      fit: BoxFit.fitWidth,
                    ),
                  ),

                  SizedBox(height: Dimens.extraLargePadding),

                  // ONBOARDING SCREEN TEXT DESCRIPTION
                  TitleAndDescriptionWidget(position: position),
                ],
              ),
            );
          },
        ),
      ),

      bottomSheet: OnboardingBottomSheetWidget(position: 3),
    );
  }
}
