import 'package:dys_app/core/exports/exports.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const String route = "onboardingview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        toolBarHeight: 29,
        actions: [
          SkipButton(),
        ],
      ),
    );
  }
}
