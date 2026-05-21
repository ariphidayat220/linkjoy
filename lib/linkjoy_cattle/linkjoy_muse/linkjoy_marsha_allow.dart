import 'package:flutter/material.dart';

extension LinkjoyMarshaAllow on Text {
  Widget maxWidth(double width) {
    return Container(
      constraints: BoxConstraints(maxWidth: width),
      child: this,
    );
  }

  Widget animateNum(
    num to,
    int durationMs, {
    Curve curve = Curves.easeOut,
    NumFormatter? formatter,
  }) {
    final text = data;

    if (text == null) return this;

    final start = num.tryParse(text.replaceAll(',', ''));

    if (start == null) return this;

    return _AnimatedNumberText(
      start: start,
      end: to,
      duration: Duration(milliseconds: durationMs),
      curve: curve,
      style: style,
      textAlign: textAlign,
      formatter: formatter,
    );
  }
}

typedef NumFormatter = String Function(num value);

class _AnimatedNumberText extends StatelessWidget {
  final num start;
  final num end;
  final Duration duration;
  final Curve curve;
  final TextStyle? style;
  final TextAlign? textAlign;
  final NumFormatter? formatter;

  const _AnimatedNumberText({
    required this.start,
    required this.end,
    required this.duration,
    required this.curve,
    this.style,
    this.textAlign,
    this.formatter,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: start.toDouble(), end: end.toDouble()),
      duration: duration,
      curve: curve,
      builder: (context, value, child) {
        final numValue = value;

        final text = formatter != null
            ? formatter!(numValue)
            : numValue.toStringAsFixed(0);

        return Text(text, style: style, textAlign: textAlign);
      },
    );
  }
}
