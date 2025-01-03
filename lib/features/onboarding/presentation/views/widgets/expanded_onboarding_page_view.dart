import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/onboarding_item.dart';

class ExpandedOnBoardingPageView extends StatelessWidget {
  const ExpandedOnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return OnBoardingItem();
        },
      ),
    );
  }
}
