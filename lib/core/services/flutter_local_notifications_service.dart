import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FlutterLocalNotificationsService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static Future<void> initialize() async {
    InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: DarwinInitializationSettings(),
    );

    try {
      bool? initializationResult =
          await flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveBackgroundNotificationResponse:
            onDidReceiveBackgroundNotificationResponse,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
      );
      debugPrint('Result $initializationResult');
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static void onDidReceiveBackgroundNotificationResponse(details) {}

  static void onDidReceiveNotificationResponse(details) {}

  static Future<void> showBasicNotification(
    int id,
    String title,
    String description,
  ) async {
    NotificationDetails notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          'Basic Notification Channel Id',
          'BasicNotification Channel Name',
          sound: RawResourceAndroidNotificationSound('basic_notification'),
          subText: 'Be ready for task',
          actions: [
            AndroidNotificationAction(
              'id',
              'Clear',
              cancelNotification: true,
            )
          ],
        ),
        iOS: DarwinNotificationDetails());
    await flutterLocalNotificationsPlugin.show(
        id, title, description, notificationDetails);
  }
}
