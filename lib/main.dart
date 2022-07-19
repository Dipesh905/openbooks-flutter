import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:openbooks/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    const MaterialApp(
      home: CheckLoginScreen(),
      debugShowCheckedModeBanner: false,
      title: "Open Books",
    ),
  );
}

/// These codes are used for authentication purpose
class CheckLoginScreen extends StatefulWidget {
  const CheckLoginScreen({Key? key}) : super(key: key);

  @override
  State<CheckLoginScreen> createState() => _CheckLoginScreenState();
}

class _CheckLoginScreenState extends State<CheckLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
