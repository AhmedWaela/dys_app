import 'package:dys_app/core/exports/exports.dart';

class DotsIndicatorsAndNextButton extends StatelessWidget {
  const DotsIndicatorsAndNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255,
      width: AppDimentions.screenWidth,
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                height: 50,
              ),
              DotsIndicators(
                currentIndex: state is IndexChanged ? state.currentIndex : 0,
              ),
              SizedBox(
                height: 48,
              ),
              CustomButton(
                onTap: () async {
                  await BlocProvider.of<OnBoardingCubit>(context).nextPage();
                },
              ),
              SizedBox(
                height: 99,
              ),
            ],
          );
        },
      ),
    );
  }
}
