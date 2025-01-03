import 'package:dys_app/core/constants/app_colors.dart';
import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/dots_indicator.dart';

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
          DotsIndicators(),
          SizedBox(
            height: 48,
          ),
          CustomButton()
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 48,
      width: AppDimentions.screenHight,
      child: const Center(
        child: Text("Next"),
      ),
    );
  }
}
