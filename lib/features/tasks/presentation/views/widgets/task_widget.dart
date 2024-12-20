import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanad_app/core/assets/app_assets.dart';
import 'package:sanad_app/core/styles/app_styles.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0XFFF6FFF9),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 5.6,
          ),
        ],
      ),
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Text(
                    'Flutter Session',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF080808),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  SvgPicture.asset(AppAssets.bellSvgPath)
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Reminder',
                style: AppStyles.textStyle12W400Grey,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.dateSvgPath,
                    height: 16,
                    width: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '2024-12-12',
                    style: AppStyles.textStyle12W400Grey,
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  SvgPicture.asset(
                    AppAssets.timeCircleSvgPath,
                    height: 16,
                    width: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '20:05',
                    style: AppStyles.textStyle12W400Grey,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          SvgPicture.asset(
            AppAssets.penSvgPath,
            height: 16,
            width: 16,
          ),
        ],
      ),
    );
  }
}
