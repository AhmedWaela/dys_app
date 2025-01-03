import 'package:dys_app/core/constants/app_colors.dart';
import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/dot_indicator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (int index) => DotIndicator(
          borderColor: index == currentIndex
              ? Colors.transparent
              : AppColors.kPrimaryColor,
          borderWidth: index == currentIndex ? 0 : 1,
          color: index == currentIndex
              ? AppColors.kPrimaryColor
              : Colors.transparent,
          margin: index != 2 ? 16 : 0,
        ),
      ),
    );
  }
}
