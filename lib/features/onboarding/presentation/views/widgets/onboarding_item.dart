import 'package:dys_app/core/exports/exports.dart';
import 'package:lottie/lottie.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem(
      {super.key,
      required this.image,
      required this.title,
      required this.description});
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppDimentions.screenHight * 51 / 812,
        ),
        Lottie.asset(
          image,
        ),
        SizedBox(
          height: AppDimentions.screenHight * 48 / 812,
        ),
        Text(title),
        SizedBox(
          height: AppDimentions.screenHight * 24 / 812,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
