import 'package:dys_app/core/exports/exports.dart';

class DotsIndicatorsAndNextButton extends StatelessWidget {
  const DotsIndicatorsAndNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (BuildContext context, OnBoardingState state) {
        return Column(
          children: [
            SizedBox(height: AppDimentions.screenHight * 50 / 812),
            DotsIndicators(currentIndex: state.index),
            SizedBox(height: AppDimentions.screenHight * 48 / 812),
            CustomButton(
              data: state.index == 2 ? "Get Started" : "Next",
              onTap: () async {
                await BlocProvider.of<OnBoardingCubit>(context).nextPage(context);
              },
            ),
            SizedBox(height: AppDimentions.screenHight * 99 / 812),
          ],
        );
      },
    );
  }
}
