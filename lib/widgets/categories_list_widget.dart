import 'package:flutter/material.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget(
      {Key? key, required this.title, required this.image})
      : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            color: Colors.red,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Text(
            title,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
