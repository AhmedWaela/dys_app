import 'package:dys_app/core/exports/exports.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator(
      {super.key,
      required this.margin,
      required this.color,
      required this.borderColor,
      required this.borderWidth});
  final double margin;
  final Color color;
  final Color borderColor;
  final double borderWidth;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: margin),
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
      ),
    );
  }
}
