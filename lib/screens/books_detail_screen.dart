import 'package:flutter/material.dart';
import 'package:openbooks/widgets/books_details_card.dart';
import 'package:openbooks/widgets/reusable_topic_section.dart';

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
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
        title: const Text('Back'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],

        // backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 16, top: 5, bottom: 5, right: 16),
              height: MediaQuery.of(context).size.height * 0.3,
              //  color: Colors.amber,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        booktitle,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('by $bookAuthor '),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.all(2),
                        // height: MediaQuery.of(context).size.height * 0.38,
                        // width: MediaQuery.of(context).size.width * 0.30,
                        decoration: BoxDecoration(
                            //   color: Colors.blue,

                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.13,
                              width: MediaQuery.of(context).size.width * 0.38,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(bookImage)),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.38,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: Column(
                                children: [
                                  Text(booktitle),
                                  Text(bookAuthor),
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
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // Column(
                      //   children: [
                      //     Container(
                      //       height: 170,
                      //       width: 120,
                      //       decoration: BoxDecoration(
                      //           image: DecorationImage(
                      //               image: AssetImage(
                      //                 bookImage,
                      //               ),
                      //               fit: BoxFit.fill),
                      //           color: Colors.green,
                      //           borderRadius: BorderRadius.circular(20)),

                      //       // child: Image.asset(
                      //       //   bookImage,
                      //       //   fit: BoxFit.cover,
                      //       // ),
                      //     ),
                      //     Container(
                      //       height: 30,
                      //       width: 140,
                      //       color: Colors.green,
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green),
                        child: const Center(
                          child: Text(
                            'Read Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Text('3.4/5'),
                          TextButton(
                              onPressed: () {},
                              child: const Text('See reviews'))
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.save,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Save as favourite'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.green
                            ),
                            child: const Center(
                              child: Text(
                                'Romantic',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                'Top 200',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
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
                  AboutSection(bookDiscription: bookDiscription),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReUsableTopicSection(title: 'Other Works by author'),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    child: const BooksDetailCard(),
                  ),
                  const ReUsableTopicSection(title: 'Similar Works '),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    child: const BooksDetailCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
    required this.bookDiscription,
  }) : super(key: key);

  final String bookDiscription;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(bookDiscription)
      ],
    );
  }
}
