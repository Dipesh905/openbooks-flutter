import 'package:flutter/material.dart';

/// Use this reusable topic section when you need to add any topic section in UI Screens
class ReUsableTopicSection extends StatelessWidget {
  /// Initializing [key] for sub classes and passing title to give topic section name
  const ReUsableTopicSection({required this.title, super.key});

  /// Title of Topic Section
  final String title;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              //  color: Colors.deepPurple,
            ),
          ),
        ],
      );
}
