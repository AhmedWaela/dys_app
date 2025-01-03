import 'package:dys_app/core/exports/exports.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ExpandedOnBoardingPageView(),
          DotsIndicatorsAndNextButton(),
        ],
      ),
    );
  }
}
