import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:openbooks/functions/top_level_functions.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   Map? userObj;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SizedBox(
//           height: 500,
//           child: Column(
//             children: [
//               // Image.network(facebookdata!["picture"]["data"]["url"] ??
//               //     'assets/sci_fi.PNG'),
//               // Text(facebookdata!["name"]),
//               // Text(facebookdata!["email"]),
//               TextButton(
//                   onPressed: () {
//                     FacebookAuth.instance.logOut().then(
//                       (value) {
//                         setState(
//                           () {
//                             //  _isLoggedIn = false;
//                             userObj = {};
//                           },
//                         );
//                       },
//                     );
//                   },
//                   child: const Text("Logout"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:openbooks/screens/login_screen.dart';
import 'package:openbooks/utils/google_auth_helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.grey[400],
      body: ListView(
        children: <Widget>[
          _buildTopPart(context),
          _buildUserInformation(context),
        ],
      ),
    );
  }

  Widget _buildTopPart(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      color: Colors.amber,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.green,
          ),
          Positioned(
            bottom: 110,
            right: 10,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
            ),
          ),
          const Positioned(
            bottom: 85,
            right: 10,
            left: 10,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 10,
            left: 10,
            child: Column(
              children: const <Widget>[
                Text(
                  "Dipesh Ghimire",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "App Developer | Engineer | Youtuber",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInformation(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            const Text(
              "User Information ",
              style: TextStyle(fontSize: 20),
            ),
            const Divider(
              thickness: 2,
            ),
            Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.location_searching),
                  title: Text('Location'),
                  subtitle: Text("kathmandu"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text("ghimiredipesh5@gmail.com"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone number'),
                  subtitle: Text("9846471054"),
                ),
                InkWell(
                  onTap: (() {
                    //    print('log out button pressed');
                    AuthHelper.logOut();

                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  }),
                  child: const ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Log out from google'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
