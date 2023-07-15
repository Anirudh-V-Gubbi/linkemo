import 'package:flutter/material.dart';

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

BorderRadius circularBorder(double radius) => BorderRadius.circular(radius);

EdgeInsets symmetricPadding({double vertical = 0.0, double horizontal = 0.0}) =>
    EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal);

Iterable<E> mapIndexed<E, T>(
    Iterable<T> items, E Function(int index, T item) f) sync* {
  var index = 0;

  for (final item in items) {
    yield f(index, item);
    index = index + 1;
  }
}