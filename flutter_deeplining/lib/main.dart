import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeNotifications();
  await checkForInitialNotification();
  runApp(MyApp());
}

// Initialize notifications
Future<void> initializeNotifications() async {
  const AndroidInitializationSettings androidSettings =
  AndroidInitializationSettings('@mipmap/ic_launcher');

  final InitializationSettings initSettings =
  InitializationSettings(android: androidSettings);

  await flutterLocalNotificationsPlugin.initialize(initSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        // Handle notification click
        handleNotificationTap(response.payload);
      });
}

/// Check if the app was opened via a notification when it was completely closed
Future<void> checkForInitialNotification() async {
  final NotificationAppLaunchDetails? details =
  await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

  if (details?.didNotificationLaunchApp ?? false) {
    final String? payload = details!.notificationResponse?.payload;

    if (payload != null) {
      // Wait until the UI is fully initialized before navigating
      WidgetsBinding.instance.addPostFrameCallback((_) {
        handleNotificationTap(payload);
      });
    }
  }
}

// Handle notification tap
void handleNotificationTap(String? payload) {
  if (payload != null) {
    GoRouter.of(navigatorKey.currentContext!).go(payload);
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/profile/:userId', builder: (context, state) {
      final userId = state.pathParameters['userId'];
      return ProfileScreen(userId: userId ?? 'unknown');
    }),
  ],
);

void showNotification() async {
  const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    importance: Importance.high,
    priority: Priority.high,
  );

  const NotificationDetails details = NotificationDetails(android: androidDetails);

  await flutterLocalNotificationsPlugin.show(
    0, // Notification ID
    "New Message",
    "Click to open profile",
    details,
    payload: "/profile/Emon Hossain Munna", // Deep link
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router, // Use GoRouter for deep linking
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: showNotification, // Trigger local notification
          child: Text("Show Notification"),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final String userId;
  ProfileScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile of $userId")),
      body: Center(child: Text("Welcome User: $userId")),
    );
  }
}


