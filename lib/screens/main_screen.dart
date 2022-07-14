import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:openbooks/screens/categories_screen.dart';
import 'package:openbooks/screens/home_screen.dart';
import 'package:openbooks/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 2;

  List tabs = const [
    Center(
      child: Text("Favourite Page"),
    ),
    Center(
      child: Text("Download Page"),
    ),
    HomeScreen(),
    CategoriesPage(),
    ProfileScreen(),
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          color: Colors.blue,
          backgroundColor: Colors.transparent,
          //  currentIndex: _selectedIndex,
          onTap: _onItemTap,
          items: const [
            Icon(Icons.favorite_border),
            Icon(Icons.download),
            Icon(Icons.home),
            Icon(Icons.edit),
            Icon(Icons.person)

            // BottomNavigationBarItem(
            //     icon: , label: "Favourite"),
            // BottomNavigationBarItem(
            //     icon: , label: "Download"),
            // BottomNavigationBarItem(icon: , label: "Write Post"),
            // BottomNavigationBarItem(icon: , label: "Profile"),
          ],
        )

        // BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   items: const [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.favorite_border), label: "Favourite"),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.download), label: "Download"),
        //     BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Write Post"),
        //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        //   ],
        //   currentIndex: _selectedIndex,
        //   onTap: _onItemTap,
        // ),
        );
  }
}
