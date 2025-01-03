import 'package:dys_app/core/constants/app_colors.dart';
import 'package:dys_app/core/exports/exports.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 16),
      duration: Duration(milliseconds: 300),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: AppColors.kPrimaryColor,
        ),
      ),
    );
  }
}
