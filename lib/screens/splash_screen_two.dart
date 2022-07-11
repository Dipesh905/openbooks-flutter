import 'package:flutter/material.dart';

import 'package:openbooks/const/colors.dart';
import 'package:openbooks/screens/third_splash_screen.dart';

class SecondSplashScreen extends StatelessWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightbackGroundColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset('assets/reading-side.png'),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.darkbackgroundcolor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'An open source library to create and read literature',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                          onPressed: () {}, child: const Text('Skip')),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 8,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 8,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 8,
                          ),
                        ],
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const ThirdSplashScreen()));
                        },
                        child: const Text('Next'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
