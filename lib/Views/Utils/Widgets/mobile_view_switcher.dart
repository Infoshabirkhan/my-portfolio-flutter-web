import 'package:flutter/material.dart';

import '../../../Models/Utils/responsive.dart';

class MobileViewSwitcher extends StatelessWidget {
  final List<Widget> children;

  const MobileViewSwitcher({Key? key, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Responsive.isMobile(context)
        ? Row(
            children: children,
          )
        : Column(
            children: children,
          );
  }
}
