import 'package:flutter/material.dart';

class BooksDetailScreen extends StatelessWidget {
  const BooksDetailScreen(
      {Key? key,
      required this.booktitle,
      required this.bookAuthor,
      required this.bookDiscription,
      required this.bookImage})
      : super(key: key);

  final String booktitle;
  final String bookAuthor;
  final String bookDiscription;
  final String bookImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.039,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 180,
                      // width: 200,
                      color: Colors.green,
                      child: Image.asset(
                        bookImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      booktitle,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Author: $bookAuthor ')
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Discription",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(bookDiscription)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
