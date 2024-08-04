import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String path;
  final double width;
  
  const CustomImage(this.path, this.width, {super.key});

  @override
  Widget build(context) {
    return Image.asset(
      path,
      width: width,
      color: const Color.fromARGB(150, 255, 255, 255),
    );
  }
}