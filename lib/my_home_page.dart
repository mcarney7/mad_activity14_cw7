// Import necessary packages
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb; // Import to check if the platform is web

// Stateful widget for the home page
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late FirebaseMessaging messaging; // Firebase Messaging instance
  String? fcmToken; // Variable to store FCM token for display

  @override
  void initState() {
    super.initState();
    messaging = FirebaseMessaging.instance;

    // Subscribe to a topic only if the platform is not web
    if (!kIsWeb) {
      messaging.subscribeToTopic("messaging");
    }

    // Get FCM token and set it in the state to display on screen
    messaging.getToken().then((value) {
      setState(() {
        fcmToken = value;
      });
      print("FCM Token: $value"); // This token can be used in Firebase Console for testing
    });

    // Listener for foreground messages with customized notification types
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      String messageBody = event.notification?.body ?? "No message";
      String messageType = event.data['type'] ?? 'regular'; // Retrieve type from data

      // Customize the notification appearance based on 'type'
      if (messageType == 'important') {
        messageBody = "🌟 IMPORTANT: $messageBody";
      } else {
        messageBody = "Regular: $messageBody";
      }

      // Show notification in an AlertDialog
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Notification"),
              content: Text(messageBody),
              actions: [
                TextButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });

    // Handle the case when the app is opened via notification click
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Notification clicked!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? "Firebase Messaging App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Messaging Tutorial"),
            if (fcmToken != null) // Display FCM Token if available
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("FCM Token: $fcmToken"),
              ),
          ],
        ),
      ),
    );
  }
}
