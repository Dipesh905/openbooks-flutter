import 'package:flutter/material.dart';
import 'package:openbooks/models/books_model.dart';
import 'package:openbooks/screens/books_detail_screen.dart';
import 'package:openbooks/widgets/books_card.dart';

class BooksDetailCard extends StatefulWidget {
  const BooksDetailCard({
    Key? key,
  }) : super(key: key);

  @override
  State<BooksDetailCard> createState() => _BooksDetailCardState();
}

class _BooksDetailCardState extends State<BooksDetailCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listofBooks.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BooksDetailScreen(
                  booktitle: listofBooks[index].bookTitle,
                  bookAuthor: listofBooks[index].bookWriter,
                  bookDiscription: listofBooks[index].bookDiscription,
                  bookImage: listofBooks[index].bookimage,
                ),
              ),
            );
          },
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.38,
                // color: Colors.red,
                child: BooksCard(
                  bookTitle: listofBooks[index].bookTitle,
                  bookImage: listofBooks[index].bookimage,
                  bookAuthor: listofBooks[index].bookWriter,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
