import 'package:dys_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

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

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16, top: 5),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Text("Skip"),
            SizedBox(width: 4),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
