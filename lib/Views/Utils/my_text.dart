import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText(
      this.text, {
        super.key,
        this.lineSpacing,
        this.maxLines,
        this.textOverflow,
        this.textAlign,
        this.isUnderline,
        this.onTap,
        this.isDynamicData = false,
        this.color,
        this.fontSize,
        this.fontWeight,
      });
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool? isDynamicData;
  final bool? isUnderline;
  final VoidCallback? onTap;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final double? lineSpacing;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
      isDynamicData! ? text : text,
        style: GoogleFonts.raleway(
          color: color ,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: isUnderline == null ? null : TextDecoration.underline,
          height: lineSpacing,
        ),
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,

      ),
    );
  }
}