import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text,
      {key,
      this.color,
      this.margin,
      this.padding,
      this.fontSize,
      this.fontWeight,
      this.alignment})
      : super(key: key);
  final String text;
  final Color color;
  final EdgeInsetsGeometry margin, padding;
  final double fontSize;
  final FontWeight fontWeight;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
