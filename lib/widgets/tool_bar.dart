import 'package:flutter/material.dart';

import '../const/strings.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              toolbarTitle(AppStrings.home),
              toolbarTitle(AppStrings.work),
              toolbarTitle(AppStrings.testimonials),
              toolbarTitle(AppStrings.about),
            ],
          ),
          // const Spacer()
        ],
      ),
    );
  }

  Widget toolbarTitle(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
}
