import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:openbooks/screens/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'An open source library to create and read literature',
            body: '',
            image: Image.asset('assets/reading-side.png'),
          ),
          PageViewModel(
            title: 'Recommendations based on interests and authors nearby',
            body: '',
            image: Image.asset('assets/write.png'),
          ),
          PageViewModel(
              title: '',
              image: Image.asset('assets/read.png'),
              bodyWidget: Column(
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
                ],
              ))
        ],
        done: const Text('Next'),
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const LoginScreen()));
        },
        // showNextButton: false,
        next: const Icon(Icons.arrow_forward),
        showSkipButton: true,
        skip: const Text('Skip'),
        animationDuration: 1000,
        dotsDecorator: const DotsDecorator(
            activeColor: Color(0xff2FB592), color: Color(0xff000000)),
      ),
    );
  }
}
