import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final bool centerText;
  final TextOverflow overflow;
  final int maxLines;
  final double fontSize;
  final String? fontFamily;
  final FontWeight fontWeight;
  final bool lineThrough;
  final bool underLine;
  final TextAlign textAlign;

  const AppText(
    this.text, {
    this.color,
    this.centerText = false,
        this.overflow=TextOverflow.ellipsis,
    this.maxLines = 1,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
    this.fontFamily,
    this.lineThrough = false,
    this.underLine = false,
        this.textAlign=TextAlign.start,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: centerText ? TextAlign.center : TextAlign.start,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
          color: color ?? Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily ?? 'Monaco',
          decoration: lineThrough
              ? TextDecoration.lineThrough
              : underLine
                  ? TextDecoration.underline
                  : TextDecoration.none,
          decorationThickness: 1,
          decorationColor: Theme.of(context).primaryColor,
          overflow: TextOverflow.ellipsis),
    );
  }
}