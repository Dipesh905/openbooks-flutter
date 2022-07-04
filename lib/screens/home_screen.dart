import 'package:flutter/material.dart';
import 'package:openbooks/widgets/homepage_appbar.dart';
import 'package:openbooks/widgets/most_popular_books.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 8, right: 8),
              child: HomePageAppBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.82,
                child: ListView(
                  children: const [
                    MostPopularBooks(),
                    //   TrendingBooks(),
                    //   RatedBooks(),
                    //   PopularPoems(),
                    //   PopularStories(),
                    //   PopularArticles(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
