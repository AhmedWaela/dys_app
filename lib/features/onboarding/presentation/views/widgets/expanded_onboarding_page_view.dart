import 'package:dys_app/core/exports/exports.dart';

class ExpandedOnBoardingPageView extends StatelessWidget {
  const ExpandedOnBoardingPageView({super.key});

  final List<OnboardingModel> items = const [
    OnboardingModel(
      image: AppAssets.onboarding1,
      title: "Welcome to Our App",
      description: "This is an onboarding tutorial to help you get started.",
    ),
    OnboardingModel(
      image: AppAssets.onboarding2,
      title: "Explore Features",
      description: "Discover all the amazing features we offer.",
    ),
    OnboardingModel(
      image: AppAssets.onboarding3,
      title: "Get Started",
      description: "Start using the app and enjoy all its benefits!",
    ),
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
