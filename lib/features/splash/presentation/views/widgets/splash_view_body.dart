import 'package:dys_app/core/utils/app_dimentions.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimentions.screenHight,
      width: AppDimentions.screenWidth,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            bottom: 500,
            duration: const Duration(milliseconds: 600),
            child: Column(
              children: [
                Transform.translate(
                  offset: const Offset(0, 50),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xff4CB050),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                if (true)
                  Container(
                    width: 50,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(100)),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
