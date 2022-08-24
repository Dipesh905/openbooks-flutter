import 'package:flutter/material.dart';
import 'package:openbooks/widgets/genres_card_widget.dart';

class GenreCard extends StatefulWidget {
  const GenreCard({
    Key? key,
  }) : super(key: key);

  @override
  State<GenreCard> createState() => _GenreCardState();
}

class _GenreCardState extends State<GenreCard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        GenresCardWidget(title: 'Romance', image: 'assets/romance.PNG'),
        GenresCardWidget(title: 'Thriller', image: 'assets/thriller.PNG'),
        GenresCardWidget(title: 'Suspense', image: 'assets/suspense.PNG'),
        GenresCardWidget(title: 'Sci-Fi', image: 'assets/sci_fi.PNG')
      ],
    );
  }
}
