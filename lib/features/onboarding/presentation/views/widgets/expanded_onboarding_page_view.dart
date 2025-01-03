import 'package:dys_app/core/assets/app_assets.dart';
import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/onboarding_item.dart';

class ExpandedOnBoardingPageView extends StatelessWidget {
  const ExpandedOnBoardingPageView({super.key});
  final List<OnboardingModel> items = const [
    OnboardingModel(image: AppAssets.onboarding1, title: "", description: ""),
    OnboardingModel(image: AppAssets.onboarding2, title: "", description: ""),
    OnboardingModel(image: AppAssets.onboarding3, title: "", description: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return OnBoardingItem(
            description: items[index].description,
            image: items[index].image,
            title: items[index].title,
          );
        },
      ),
    );
  }
}
