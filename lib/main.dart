import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sanad_app/features/tasks/presentation/views/add_reminder_view.dart';
import 'package:sanad_app/features/tasks/presentation/views/reminder_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SanadApp());
}

class SanadApp extends StatelessWidget {
  const SanadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        scaffoldBackgroundColor: const Color(0xffF6FFF9),
      ),
      initialRoute: ReminderView.route,
      routes: {
        ReminderView.route: (BuildContext context) => const ReminderView(),
        AddReminderView.route: (BuildContext context) => const AddReminderView()
      },
    );
  }
}
