import 'package:dys_app/core/exports/exports.dart';

class DotsIndicatorsAndNextButton extends StatelessWidget {
  const DotsIndicatorsAndNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255,
      width: AppDimentions.screenWidth,
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (BuildContext context, OnBoardingState state) {
          return Column(
            children: [
              SizedBox(height: 50),
              DotsIndicators(currentIndex: state.index),
              SizedBox(height: 48),
              CustomButton(
                onTap: () async {},
              ),
              SizedBox(height: 99),
            ],
          );
        },
      ),
    );
  }
}
