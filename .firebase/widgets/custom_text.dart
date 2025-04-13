import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? height;
  final double? wordSpacing;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecorationStyle? decorationStyle;
  final String? fontFamily; // New parameter for Google Font

  const CustomText({
    super.key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.textAlign,
    this.letterSpacing,
    this.maxLines,
    this.decorationStyle,
    this.overflow,
    this.height,
    this.wordSpacing,
    this.fontFamily, // Allow Google Font family
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: fontFamily != null
          ? GoogleFonts.getFont(
        fontFamily!,
        fontSize: fontSize,
        fontWeight: fontWeight,
        wordSpacing: wordSpacing,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
      )
          : TextStyle(
        decorationStyle: decorationStyle,
        fontSize: fontSize,
        fontWeight: fontWeight,
        wordSpacing: wordSpacing,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
      ),
    );
  }
}
