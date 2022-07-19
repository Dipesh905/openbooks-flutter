import 'package:flutter/material.dart';

import 'package:openbooks/screens/categories_screen.dart';
import 'package:openbooks/widgets/books_card.dart';
import 'package:openbooks/widgets/books_details_card.dart';

class StoriesBookPage extends StatelessWidget {
  const StoriesBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.039,
            ),

            const CategorySearchAppBar(),

            Container(
              //  color: Colors.amber,
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    // width: MediaQuery.of(context).size.width * 0.2,
                    child: BooksCard(
                        bookTitle: 'title',
                        bookImage: 'assets/science.PNG',
                        bookAuthor: 'author'),
                  );
                },
              ),
            ),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.3,
            //   width: MediaQuery.of(context).size.width * 0.4,
            //   child: BooksCard(
            //       bookTitle: 'title',
            //       bookImage: 'assets/science.PNG',
            //       bookAuthor: 'author'),
            // ),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   child: GridView.builder(
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 3,
            //     ),
            //     itemCount: 2,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Container(
            //         height: MediaQuery.of(context).size.height,
            //         width: MediaQuery.of(context).size.width * 5,
            //         color: Colors.red,
            //       );

            //       // SizedBox(
            //       //   height: MediaQuery.of(context).size.height * 4,
            //       //   child: BooksCard(
            //       //       bookTitle: 'title',
            //       //       bookImage: 'assets/math.PNG',
            //       //       bookAuthor: 'author'),
            //       // );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
