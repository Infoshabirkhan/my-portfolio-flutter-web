import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactItems extends StatelessWidget {
  final Widget icon;
  final String label;

  const ContactItems({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: icon),
          ),
          Expanded(
              flex: 4,
              child: SelectableText(
                label,
                style: GoogleFonts.raleway(),
              ))
        ],
      ),
    );
  }
}
