import 'package:flutter/material.dart';
import 'package:openbooks/models/books_model.dart';
import 'package:openbooks/screens/books_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late BooksModel optiondata;
  bool showlistofbooks = false;

  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Autocomplete<BooksModel>(
          displayStringForOption: ((BooksModel option) {
            return option.bookTitle;
          }),
          optionsBuilder: ((TextEditingValue textEditingValue) {
            return listofBooks.where(
              (element) {
                return element.bookTitle.startsWith(textEditingValue.text);
              },
            ).toList();
          }),
          fieldViewBuilder: (
            BuildContext context,
            TextEditingController fieldEditingController,
            FocusNode searchFocusNode,
            VoidCallback onFieldSubmitted,
          ) {
            return TextFormField(
              controller: fieldEditingController,
              focusNode: searchFocusNode,
              onChanged: (String value) {},
              decoration: const InputDecoration(
                  hintText: "Search Books",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none),
            );
          },
          onSelected: (BooksModel book) {
            // print(book.bookTitle);
            // print(book.bookDiscription);
            // print(book.bookWriter);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BooksDetailScreen(
                    booktitle: optiondata.bookTitle,
                    bookAuthor: optiondata.bookWriter,
                    bookDiscription: optiondata.bookDiscription,
                    bookImage: optiondata.bookimage),
              ),
            );
          },
          optionsViewBuilder: (
            BuildContext context,
            AutocompleteOnSelected<BooksModel> onSelected,
            Iterable<BooksModel> options,
          ) {
            return Padding(
              padding: const EdgeInsets.only(left: 1, right: 5, top: 8),
              child: Scaffold(
                body: Card(
                  child: ListView.builder(
                    addRepaintBoundaries: false,
                    itemCount: options.length,
                    itemBuilder: (BuildContext context, int index) {
                      final BooksModel option = options.elementAt(index);
                      return InkWell(
                        onTap: () {
                          setState(
                            () {
                              optiondata = option;
                              showlistofbooks = true;
                            },
                          );

                          onSelected(option);
                        },
                        child: ListTile(
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              option.bookimage,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            option.bookTitle,
                          ),
                          subtitle: Text(
                            option.bookWriter,
                          ),
                          trailing: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
