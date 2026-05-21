import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LinkjoyMagnetDivision<T> extends StatelessWidget {
  final String? tag;

  const LinkjoyMagnetDivision({super.key, this.tag});

  T get logic => GetInstance().find<T>(tag: tag)!;

  @override
  Widget build(BuildContext context);
}
