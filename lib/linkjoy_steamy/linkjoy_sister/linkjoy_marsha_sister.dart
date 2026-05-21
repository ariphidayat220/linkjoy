import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';

class LinkjoyMarshaSister {
  static Widget buildWithStroke(
    String text, {
    TextStyle? style,
    Color fontColor = Colors.white,
    Color strokeColor = Colors.white,
    double strokeWidth = 1,
    int maxLines = 1,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    style ?? LinkjoyMarshaHater.body_B;
    return Stack(
      children: [
        Text(
          text,
          style: style?.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
          maxLines: maxLines,
          overflow: overflow,
        ),
        Text(
          text,
          style: style?.copyWith(color: fontColor),
          maxLines: maxLines,
          overflow: overflow,
        ),
      ],
    );
  }

  static Widget linkjoyAlikeNannyMarsha(
    Text text,
    double maxWidth, {
    double? minWidth,
  }) {
    return linkjoyAlikeNannyFridge(text, maxWidth, minWidth: minWidth);
  }

  static Widget linkjoyAlikeNannyFridge(
    Widget widget,
    double maxWidth, {
    double? minWidth,
  }) {
    return Container(
      constraints: BoxConstraints(minWidth: minWidth ?? 0, maxWidth: maxWidth),
      child: widget,
    );
  }
}
