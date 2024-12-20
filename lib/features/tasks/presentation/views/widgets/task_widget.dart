import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  SvgPicture.asset('assets/images/Bell.svg')
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Reminder',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF717171),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/date.svg',
                    height: 16,
                    width: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '2024-12-12',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF717171),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  SvgPicture.asset(
                    'assets/images/Time Circle.svg',
                    height: 16,
                    width: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '20:05',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF717171),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          SvgPicture.asset(
            'assets/images/Pen.svg',
            height: 16,
            width: 16,
          ),
        ],
      ),
    );
  }
}
