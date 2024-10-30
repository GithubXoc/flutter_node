// ignore_for_file: slash_for_doc_comments

import 'package:flutter/material.dart';

extension CustomDimensions on ThemeData {
  SizedBox get pageTitle => const SizedBox(
        height: 200,
      );
  SizedBox get componentPadTop => const SizedBox(
        height: 20,
      );
}

/****************************************
*******APPLICATION SHAPES BELOW**********
*****************************************/
class ShapesConstans {
  static const double containerRadius = 60.0;
  static const double largePadding = 30.0;
}

extension CustomShapes on Widget {
  // Custom rounded rectangle container
  Widget largeRoundedContainer({
    EdgeInsetsGeometry padding = const EdgeInsets.only(
      left: ShapesConstans.largePadding,
      top: ShapesConstans.largePadding,
    ),
    AlignmentGeometry alignment = Alignment.center,
    BoxShadow? shadow,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.7,
            1.0,
          ],
          colors: [
            Color(0xff9FCCC9),
            Color(0xffE0E1D9),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(ShapesConstans.containerRadius),
        ),
        boxShadow: shadow != null ? [shadow] : null,
      ),
      padding: padding,
      alignment: alignment,
      child: this, // This refers to the child widget
    );
  }

  Widget smallRoundedContainer({
    AlignmentGeometry alignment = Alignment.center,
    BoxShadow? shadow,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffD6EBE4),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(ShapesConstans.containerRadius)),
        boxShadow: shadow != null ? [shadow] : null,
      ),
      alignment: alignment,
      child: this, // This refers to the child widget
    );
  }
}
