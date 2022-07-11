import 'package:flutter/material.dart';
import 'package:openbooks/screens/most_popular_gridview_screen.dart';
import 'package:openbooks/widgets/genres_card.dart';
import 'package:openbooks/widgets/reusable_topic_section.dart';

class GenrePage extends StatelessWidget {
  const GenrePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ReUsableTopicSection(title: 'Genres'),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              const MostPopularGridViewScreen())));
                },
                child: const Text('View All'))
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
          width: double.infinity,
          child: const GenreCard(),
        ),
      ],
    );
  }
}
