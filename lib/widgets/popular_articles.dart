import 'package:flutter/material.dart';
import 'package:openbooks/widgets/books_details_card.dart';
import 'package:openbooks/widgets/reusable_topic_section.dart';

class PopularArticles extends StatelessWidget {
  const PopularArticles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ReUsableTopicSection(title: 'Popular Articles'),
            TextButton(onPressed: () {}, child: const Text('View All'))
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2092,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return const BooksDetailCard();
            },
          ),
        ),
      ],
    );
  }
}
