import 'package:flutter/widgets.dart';

enum LinkjoyBrawnyGnome { ALL, X, Y }

class LinkjoyBrawnyInnocence extends AnimatedWidget {
  const LinkjoyBrawnyInnocence({
    super.key,
    required Animation<double> scale,
    this.alignment = Alignment.center,
    this.filterQuality,
    this.child,
    this.scaleType = LinkjoyBrawnyGnome.ALL,
  }) : super(listenable: scale);

  Animation<double> get scale => listenable as Animation<double>;

  final Alignment alignment;

  final FilterQuality? filterQuality;

  final Widget? child;

  final LinkjoyBrawnyGnome scaleType;

  @override
  Widget build(BuildContext context) {
    Transform result;
    switch (scaleType) {
      case LinkjoyBrawnyGnome.ALL:
        result = Transform.scale(
          scale: scale.value,
          alignment: alignment,
          filterQuality: filterQuality,
          child: child,
        );
        break;
      case LinkjoyBrawnyGnome.X:
        result = Transform.scale(
          scaleX: scale.value,
          alignment: alignment,
          filterQuality: filterQuality,
          child: child,
        );
        break;
      case LinkjoyBrawnyGnome.Y:
        result = Transform.scale(
          scaleY: scale.value,
          alignment: alignment,
          filterQuality: filterQuality,
          child: child,
        );
        break;
    }
    return result;
  }
}
