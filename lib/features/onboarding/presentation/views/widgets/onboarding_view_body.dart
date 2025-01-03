import 'package:dys_app/core/constants/app_colors.dart';
import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/dot_indicator.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/dots_indicator.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/expanded_onboarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ExpandedOnBoardingPageView(),
        DotsIndicatorsAndNextButton(),
      ],
    );
  }
}

class DotsIndicatorsAndNextButton extends StatelessWidget {
  const DotsIndicatorsAndNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: AppDimentions.screenWidth,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          DotsIndicators()
        ],
      ),
    );
  }
}
