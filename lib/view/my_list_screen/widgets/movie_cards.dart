import 'package:flutter/material.dart';

class MovieCards extends StatelessWidget {
  const MovieCards({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(url))),
    );
  }
}
