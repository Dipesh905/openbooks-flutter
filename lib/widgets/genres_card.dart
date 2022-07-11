import 'package:flutter/material.dart';
import 'package:openbooks/models/books_model.dart';

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
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listofBooks.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Card(
            color: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/physics.PNG',
                          ),
                          fit: BoxFit.cover)),
                ),
                const Positioned(
                  bottom: 10,
                  left: 15,
                  child: Text(
                    'Physics',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
