import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openbooks/functions/top_level_functions.dart';
import 'package:openbooks/screens/main_screen.dart';
import 'package:openbooks/screens/profile_screen.dart';
import 'package:openbooks/utils/google_auth_helper.dart';

import 'package:twitter_login/twitter_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // bool _isLoggedIn = false;
  // Map _userObj = {};
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepOrange,
                Colors.deepOrangeAccent,
                Colors.orange,
                Colors.amber,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                color: Colors.green,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Open Books",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 16),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 16),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const MainScreen()));
                      },
                      child: const Text('Login'))),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '-OR-',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Login With',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async {
                      try {
                        await AuthHelper.signInWithGoogle();
                      } catch (e) {
                        //  print(e);
                      }
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      FacebookAuth.instance
                          .login(permissions: ["public_profile", "email"]).then(
                        (value) {
                          FacebookAuth.instance.getUserData().then(
                            (userData) {
                              setState(
                                () {
                                  // _isLoggedIn = true;
                                  // _userObj = userData;
                                  facebookdata = userData;
                                },
                              );

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const ProfileScreen()));
                            },
                          );
                        },
                      );
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      final twitterLogin = TwitterLogin(
                        // Consumer API keys
                        apiKey: "xaT60D3dXvS68lsN072sGNj5A",
                        // Consumer API Secret keys
                        apiSecretKey:
                            'JHy9AoZBOemd7rAkELuUqHB2N4J3uf9GeQnldf1WjuGjMkcaJK',
                        // Registered Callback URLs in TwitterApp
                        // Android is a deeplink
                        // iOS is a URLScheme
                        redirectURI: 'flutter-twitter-login://',
                      );

                      await twitterLogin.login().then((value) async {
                        // print(value.authToken);
                        // var a = await value.authTokenSecret;
                        // print(
                        //     '==============auth token secret ====================');
                        // print(a);
                      });

                      // final AuthCredential credential =
                      //     TwitterAuthProvider.credential(
                      //         accessToken: authResult.authToken!,
                      //         secret: authResult.authTokenSecret!);
                      // await FirebaseAuth.instance
                      //     .signInWithCredential(credential);

                      // switch (authResult.status!) {
                      //   case TwitterLoginStatus.loggedIn:
                      //     print('login sucess');
                      //     // success
                      //     break;
                      //   case TwitterLoginStatus.cancelledByUser:
                      //     // cancel
                      //     print('cancelledbyuser');
                      //     break;
                      //   case TwitterLoginStatus.error:
                      //     // error
                      //     print('login error');
                      //     break;
                      // }
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
