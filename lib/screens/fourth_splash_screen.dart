import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:openbooks/const/colors.dart';
import 'package:openbooks/screens/login_screen.dart';

class FourthSplashScreen extends StatelessWidget {
  const FourthSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightbackGroundColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/read.png'),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  child: Image.asset(
                    'assets/openbook.png',
                  ),
                )
              ],
            ),
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.facebook,
                              // color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text('Sign in with Facebook'),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.google,
                              // color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text('Sign in with Google'),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.twitter,
                              // color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text('Sign in with Twitter'),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginScreen()));
                      },
                      child: const Text('Skip')),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
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
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 8,
                          ),
                        ],
                      ),
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
