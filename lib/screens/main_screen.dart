import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:openbooks/screens/categories_screen.dart';
import 'package:openbooks/screens/home_screen.dart';
import 'package:openbooks/screens/profile_screen.dart';
import 'package:openbooks/screens/stories_books_screen.dart';

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
    StoriesBookPage(),
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
            Icon(Icons.book),
            Icon(Icons.home),
            Icon(Icons.edit),
            Icon(Icons.person)
          ],
        ));
  }
}
