import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDesign extends StatelessWidget {
  final String text;
  final Color? colorName;
  final double? size;
  final FontWeight? weight;
  final TextAlign? align;
  final Color? bgColor;

  const TextDesign(this.text, this.colorName, this.size, {this.align, this.weight, this.bgColor, super.key});

  @override
  Widget build(context) {
    return Text(
      text, 
      style: GoogleFonts.lato(
        color: colorName,
        fontSize: size,
        fontWeight: weight,
        backgroundColor: bgColor
      ),
      textAlign: align,
    );
  }
}
