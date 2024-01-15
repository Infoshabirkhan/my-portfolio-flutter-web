import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Spacing on num {
  SizedBox get ph => SizedBox(
    height: toDouble().h,
  );
  SizedBox get pw => SizedBox(
    width: toDouble().w,
  );
}

extension RouteContext on BuildContext {
  toNamed(String routeName, {Object? args}) =>
      Navigator.of(this).pushNamed(routeName, arguments: args);
}
