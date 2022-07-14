import 'package:flutter/material.dart';
import 'package:openbooks/widgets/categories_list_widget.dart';
import 'package:openbooks/widgets/category_button.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.039,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.search),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.menu_open))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CategoryButton(title: 'Romance'),
                        SizedBox(
                          width: 3,
                        ),
                        CategoryButton(title: 'Sci-fi'),
                        SizedBox(
                          width: 3,
                        ),
                        CategoryButton(title: 'Thillar'),
                        SizedBox(
                          width: 3,
                        ),
                        CategoryButton(title: 'Fantasy'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  SizedBox(
                    height: 15,
                  ),
                  CategoriesListWidget(
                      title: 'Stories', image: 'assets/math.PNG'),
                  SizedBox(
                    height: 15,
                  ),
                  CategoriesListWidget(
                      title: 'Poem', image: 'assets/chemistry.PNG'),
                  SizedBox(
                    height: 15,
                  ),
                  CategoriesListWidget(
                      title: 'Articles', image: 'assets/physics.PNG'),
                  SizedBox(
                    height: 15,
                  ),
                  CategoriesListWidget(
                      title: 'Diaries', image: 'assets/science.PNG')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
