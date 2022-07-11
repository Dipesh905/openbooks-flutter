import 'package:flutter/material.dart';

import 'package:openbooks/const/colors.dart';

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
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Text('Skip')),
                      Row(
                        children: [
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
                          style: ButtonStyle(),
                          onPressed: () {},
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
