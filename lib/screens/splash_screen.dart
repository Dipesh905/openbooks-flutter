import 'package:flutter/material.dart';
import 'package:openbooks/const/colors.dart';
import 'package:openbooks/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 5));
    print('5 second completed');
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (_) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightbackGroundColor,
      body: Center(
        child: Image.asset('assets/openbook.png'),
      ),
    );
  }
}
