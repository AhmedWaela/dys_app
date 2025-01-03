import 'package:dys_app/core/exports/exports.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 16, top: 2),
        child: Row(
          children: [
            Text(
              "Skip",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 4),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
