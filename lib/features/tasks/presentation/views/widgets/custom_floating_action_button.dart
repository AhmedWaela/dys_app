import 'package:flutter/material.dart';
import 'package:sanad_app/features/tasks/presentation/views/add_reminder_view.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70),
      child: FloatingActionButton(
        backgroundColor: Color(0XFF4CB050),
        child: Center(
          child: Icon(
            Icons.add,
            size: 50,
            color: Color(0XFFF6FFF9),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, AddReminderView.route);
        },
      ),
    );
  }
}
