import 'package:flutter/material.dart';
import 'package:quiz_app/model/customise_widgets/text_design.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final double? size;
  final void Function() action;

  const CustomButton({super.key, required this.text, this.foregroundColor, this.backgroundColor, this.textColor, this.size, required this.action});

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: action,
      style: OutlinedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
      ),
      label: TextDesign(text, textColor, size, align: TextAlign.center)
    );
  }
}