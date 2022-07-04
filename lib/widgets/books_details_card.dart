import 'package:flutter/material.dart';
import 'package:openbooks/models/books_model.dart';
import 'package:openbooks/screens/books_detail_screen.dart';

class BooksDetailCard extends StatefulWidget {
  const BooksDetailCard({
    Key? key,
  }) : super(key: key);

  @override
  State<BooksDetailCard> createState() => _BooksDetailCardState();
}

class _BooksDetailCardState extends State<BooksDetailCard> {
  List<BooksModel> listofBooks = [
    BooksModel(
        bookTitle: 'Physics',
        bookWriter: 'Dipesh Ghimire',
        bookDiscription:
            'Physics is the natural science that studies matter, its fundamental constituents, its motion and behavior through space and time, and the related entities of energy and force. Physics is one of the most fundamental scientific disciplines, with its main goal being to understand how the universe behaves. ',
        bookimage: 'assets/physics.PNG'),
    BooksModel(
        bookTitle: 'Science',
        bookWriter: 'Sudip koirala',
        bookDiscription:
            'Science is a systematic enterprise that builds and organizes knowledge in the form of testable explanations and predictions about the universe ',
        bookimage: 'assets/science.PNG'),
    BooksModel(
        bookTitle: 'Chemistry',
        bookWriter: 'Ashish',
        bookDiscription:
            'Chemistry is the scientific study of the properties and behavior of matter. It is a natural science that covers the elements that make up matter to the compounds composed of atoms, molecules and ions',
        bookimage: 'assets/chemistry.PNG'),
    BooksModel(
        bookTitle: 'Math',
        bookWriter: 'Pratyash',
        bookDiscription:
            'Mathematics is an area of knowledge that includes such topics as numbers, formulas and related structures, shapes and the spaces in which they are contained, and quantities and their changes. Most mathematical activity involves discovering and proving properties of abstract objects by pure reasoning',
        bookimage: 'assets/math.PNG')
  ];

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
          child: Card(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.35,
                          //  color: Colors.blue,
                          child: Image.asset(listofBooks[index].bookimage)),
                      Text(listofBooks[index].bookTitle),
                      Text(listofBooks[index].bookWriter),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ],
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
