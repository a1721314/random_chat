import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:random_chatr/screens/chat_screen.dart';
import 'package:random_chatr/screens/login_screen.dart';
import 'package:random_chatr/screens/registration_screen.dart';
import 'package:random_chatr/screens/welcom_screen.dart';

//void main() => runApp(FlashChat());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      initialRoute: ChatScreen.id,
      //initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
