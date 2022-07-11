import 'package:flutter/material.dart';

import 'package:openbooks/const/colors.dart';
import 'package:openbooks/screens/fourth_splash_screen.dart';

class ThirdSplashScreen extends StatelessWidget {
  const ThirdSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightbackGroundColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset('assets/write.png'),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.darkbackgroundcolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Recommendations based on interests and authors nearby',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Text('Skip')),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 8,
                          ),
                          SizedBox(
                            width: 3,
                          ),
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
                        ],
                      ),
                      OutlinedButton(
                          style: ButtonStyle(),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const FourthSplashScreen()));
                          },
                          child: Text('Next')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
