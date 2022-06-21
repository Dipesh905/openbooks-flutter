import 'package:flutter/material.dart';
import 'package:openbooks/widgets/homepage_appbar.dart';
import 'package:openbooks/widgets/most_popular_books.dart';
import 'package:openbooks/widgets/rated_books.dart';
import 'package:openbooks/widgets/trending_in_books.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List tabs = [
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 5, right: 5),
        child: Column(
          children: const [
            HomePageAppBar(),
            MostPopularBooks(),
            TrendingBooks(),
            RatedBooks(),
          ],
        ),
      ),
    ),
    Center(
      child: Text("Favourite Page"),
    ),
    Center(
      child: Text("Download Page"),
    ),
    Center(
      child: Text("Submit your Poem"),
    ),
    Center(
      child: Text("My Profile"),
    ),
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
