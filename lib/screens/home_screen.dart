import 'package:flutter/material.dart';
import 'package:openbooks/const/colors.dart';
import 'package:openbooks/screens/search_screen.dart';
import 'package:openbooks/screens/generas_section.dart';
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
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.darkbackgroundcolor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                      ),
                      Image.asset(
                        'assets/openbook.png',
                        scale: 3,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SearchScreen()));
                        },
                        icon: const Icon(Icons.search),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 100),
                        const Text(
                          'Welcome',
                          style: TextStyle(fontSize: 24),
                        ),
                        const Text(
                          'Sudip,',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Continue Reading',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const GenrePage(),
            // const Padding(
            //   padding: EdgeInsets.only(top: 40, left: 8, right: 8),
            //   child: HomePageAppBar(),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.82,
                child: ListView(
                  children: const [
                    MostPopularBooks(),
                    //  TrendingBooks(),
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
