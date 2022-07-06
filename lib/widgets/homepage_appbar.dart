import 'package:flutter/material.dart';
import 'package:openbooks/screens/search_screen.dart';
import 'package:openbooks/utils/google_auth_helper.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.55,
          decoration: BoxDecoration(
              color: Colors.grey[400], borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: TextFormField(
              decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search'),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SearchScreen()));
          },
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () async {
            try {
              await AuthHelper.logOut();
            } catch (e) {
              //  print(e);
            }
          },
          icon: const Icon(
            Icons.exit_to_app,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
