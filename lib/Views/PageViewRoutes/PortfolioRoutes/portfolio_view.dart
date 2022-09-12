import 'package:flutter/material.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/page_view_static.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: portfolioHeight,),
    );
  }
}
