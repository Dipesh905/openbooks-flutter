import 'package:flutter/material.dart';
import 'package:openbooks/screens/home_screen.dart';
import 'package:openbooks/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List tabs = const [
    HomeScreen(),
    Center(
      child: Text("Favourite Page"),
    ),
    Center(
      child: Text("Download Page"),
    ),
    Center(
      child: Text("Submit your Poem"),
    ),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: "Download"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Write Post"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
