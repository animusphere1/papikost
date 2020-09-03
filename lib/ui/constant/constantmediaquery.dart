import 'package:flutter/material.dart';

double deviceWith(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

MediaQueryData mediaQuery(BuildContext context) {
  return MediaQuery.of(context);
}
