import 'package:flutter/material.dart';

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

BorderRadius circularBorder(double radius) => BorderRadius.circular(radius);

EdgeInsets symmetricPadding({double vertical = 0.0, double horizontal = 0.0}) =>
    EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal);
