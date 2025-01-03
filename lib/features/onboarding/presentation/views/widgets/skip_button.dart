import 'package:dys_app/core/exports/exports.dart';

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
