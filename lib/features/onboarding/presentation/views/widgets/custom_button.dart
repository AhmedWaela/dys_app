import 'package:dys_app/core/exports/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.data});
  final void Function()? onTap;
  final String data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        height: 48,
        width: AppDimentions.screenHight,
        child: Center(
          child: Text(
            data,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
