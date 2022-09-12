import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class SocailMediaButtons extends StatelessWidget {
  final String link;
  final Widget icon;
  const SocailMediaButtons({Key? key, required this.icon,required this.link,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: () {
            html.window
                .open(link, '_blank');
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child:  Center(
                child: icon),
          ),
        ),
      ),
    );
  }
}
