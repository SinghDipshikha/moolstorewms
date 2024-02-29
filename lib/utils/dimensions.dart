import 'package:flutter/material.dart';

bool isMobile(context) {
  return MediaQuery.sizeOf(context).width < 600;
}
