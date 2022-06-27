import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:openbooks/functions/top_level_functions.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Map? userObj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          child: Column(
            children: [
              Image.network(facebookdata!["picture"]["data"]["url"]),
              Text(facebookdata!["name"]),
              Text(facebookdata!["email"]),
              TextButton(
                  onPressed: () {
                    FacebookAuth.instance.logOut().then(
                      (value) {
                        setState(
                          () {
                            //  _isLoggedIn = false;
                            userObj = {};
                          },
                        );
                      },
                    );
                  },
                  child: const Text("Logout"))
            ],
          ),
        ),
      ),
    );
  }
}
