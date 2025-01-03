import 'package:dys_app/core/constants/app_colors.dart';
import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/dot_indicator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (int index) => DotIndicator(
          borderColor: AppColors.kPrimaryColor,
          borderWidth: 1,
          color: Colors.transparent,
          margin: 16,
        ),
      ),
    );
  }
}
