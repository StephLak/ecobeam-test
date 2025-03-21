import 'package:flutter/material.dart';

double queryHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double queryWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
