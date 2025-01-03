import 'package:dys_app/features/splash/presentation/manager/splash_cubit/splash_cubit.dart';
import 'package:dys_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String route = "splashview";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..initState(),
      child: const Scaffold(
        body: SplashViewBody(),
      ),
    );
  }
}
