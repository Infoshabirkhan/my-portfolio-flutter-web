import 'package:flutter/material.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/footer_menus.dart';

class ScrollableFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: constraints.copyWith(
                minHeight: constraints.maxHeight,
                maxHeight: double.infinity,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    // Your body widgets here
                    Expanded(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomFooter()// Your footer widget
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}