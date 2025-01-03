import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/features/onboarding/presentation/manager/onboarding_cubit/on_boarding_cubit.dart';
import 'package:dys_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const String route = "onboardingview";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnBoardingCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
          toolBarHeight: 29,
          actions: [
            SkipButton(
              onTap: () {},
            ),
          ],
        ),
        body: const OnBoardingViewBody(),
      ),
    );
  }
}
