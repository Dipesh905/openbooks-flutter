import 'package:flutter/material.dart';
import 'package:openbooks/models/books_model.dart';

class MostPopularGridViewScreen extends StatefulWidget {
  const MostPopularGridViewScreen({Key? key}) : super(key: key);

  @override
  State<MostPopularGridViewScreen> createState() =>
      _MostPopularGridViewScreenState();
}

class _MostPopularGridViewScreenState extends State<MostPopularGridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Most Popular books'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: listofBooks.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Column(
                        children: [
                          SizedBox(
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
              );

              //  Card(
              //   child: Container(
              //     height: 30,
              //     width: 30,
              //     color: Colors.amber,
              //   ),
              // );
            },
          ),
          // GridView.count(
          //   shrinkWrap: true,
          //   crossAxisSpacing: 1,
          //   mainAxisSpacing: 2,
          //   crossAxisCount: 2,
          //   children: <Widget>[
          //     ListView.builder(
          //       sc
          //       itemCount: 5,
          //       itemBuilder: (BuildContext context, int index) {
          //         return Card(
          //           child: Container(
          //             height: 30,
          //             width: 30,
          //             color: Colors.amber,
          //           ),
          //         );
          //       },
          //     ),
          //   ],
          // ),
        ],
      )),
    );
  }
}
