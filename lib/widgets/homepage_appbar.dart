import 'package:flutter/material.dart';

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
          width: MediaQuery.of(context).size.width * 0.7,
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
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
