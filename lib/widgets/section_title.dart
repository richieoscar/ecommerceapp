import 'package:ecommerceapp/config/theme.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(title, style: textTheme().headline3)),
    );
  }
}
