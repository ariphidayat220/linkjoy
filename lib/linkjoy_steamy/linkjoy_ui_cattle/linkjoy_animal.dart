import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:flutter/material.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'linkjoy_marsha_hater.dart';

class LinkjoyAnimal {
  static const LinkjoyAnimalShock defaultConfig = LinkjoyAnimalShock();

  static LinkjoyAnimalShock get common =>
      LinkjoyAnimalShock(borderRadius: LinkjoyGarage.s32);

  static Future<bool?> showOverflowStandardDialog(
    BuildContext context, {
    required Widget topImage,
    required double imageHeight,
    required double imageOverflow,
    required String title,
    required String description,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    LinkjoyAnimalShock? config,
    List<Widget>? actionMenu,
    Decoration? decoration,
    EdgeInsetsGeometry? padding,
    double titleHGap = 24,
    LinkjoyAnimalKnew gravity = LinkjoyAnimalKnew.center,
  }) {
    final dialogConfig = config ?? common;

    Widget standardWidget = _linkjoyYourselfAnimal(
      context: context,
      title: title,
      description: description,
      confirmText: confirmText,
      cancelText: cancelText,
      onConfirm: onConfirm,
      onCancel: onCancel,
      actions: actionMenu,
      config: config,
    );

    Widget mainContent = Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(top: imageHeight - imageOverflow),
          padding: padding,
          decoration:
              decoration ??
              BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(dialogConfig.borderRadius),
                boxShadow: dialogConfig.shadow,
              ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: titleHGap),
              standardWidget,
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SizedBox(height: imageHeight, child: topImage),
        ),
      ],
    );

    if (gravity == LinkjoyAnimalKnew.bottom) {
      return bottom(context: context, child: mainContent, config: dialogConfig);
    }
    return base(context: context, child: mainContent, config: dialogConfig);
  }

  static Future<bool?> showOverflowCustomDialog(
    BuildContext context, {
    required Widget topImage,
    required double imageHeight,
    required double imageOverflow,
    required Widget childWidgets,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    LinkjoyAnimalShock? config,
    List<Widget>? actionMenu,
    Decoration? decoration,
    EdgeInsetsGeometry? padding,
    double titleHGap = 24,
    LinkjoyAnimalKnew gravity = LinkjoyAnimalKnew.center,
  }) {
    final dialogConfig = config ?? common;

    Widget mainContent = Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(top: imageHeight - imageOverflow),
          padding: padding,
          decoration:
              decoration ??
              BoxDecoration(
                borderRadius: 32.rectBg,
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [Color(0xFFA4FFA8), Colors.white],
                  stops: [0.0, 0.4],
                ),
              ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: titleHGap),
              childWidgets,
              30.hGap,
              ..._linkjoyYourselfYum(
                onConfirm,
                confirmText,
                cancelText,
                onCancel,
              ),
              36.hGap,
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SizedBox(height: imageHeight, child: topImage),
        ),
      ],
    );

    if (gravity == LinkjoyAnimalKnew.bottom) {
      return bottom(context: context, child: mainContent, config: dialogConfig);
    }
    return base(context: context, child: mainContent, config: dialogConfig);
  }

  static Future<bool?> showCenterIconsDialog(
    BuildContext context, {
    required List<Widget> icons,
    required String title,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    List<Widget>? actions,
    LinkjoyAnimalShock? config,
    LinkjoyAnimalKnew gravity = LinkjoyAnimalKnew.center,
  }) {
    final dialogConfig = config ?? common;

    Widget mainContent = _linkjoyDespiteFrootAnimal(
      context: context,
      icons: icons,
      title: title,
      confirmText: confirmText,
      cancelText: cancelText,
      onConfirm: onConfirm,
      onCancel: onCancel,
    );

    if (gravity == LinkjoyAnimalKnew.bottom) {
      return bottom(context: context, child: mainContent, config: dialogConfig);
    }

    return base(context: context, child: mainContent, config: dialogConfig);
  }

  static Future<bool?> showStandardDialog(
    BuildContext context, {
    Widget? icon,
    double iconSize = 48.0,
    required String title,
    required String description,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    List<Widget>? actions,
    LinkjoyAnimalShock? config,
    LinkjoyAnimalKnew gravity = LinkjoyAnimalKnew.center,
  }) {
    final dialogConfig = config ?? common;

    Widget mainContent = _linkjoyYourselfAnimal(
      context: context,
      icon: icon,
      iconSize: iconSize,
      title: title,
      description: description,
      confirmText: confirmText,
      cancelText: cancelText,
      onConfirm: onConfirm,
      onCancel: onCancel,
      config: config,
    );

    if (gravity == LinkjoyAnimalKnew.bottom) {
      return bottom(context: context, child: mainContent, config: dialogConfig);
    }

    return base(context: context, child: mainContent, config: dialogConfig);
  }

  static Future<bool?> showStandardActionsDialog(
    BuildContext context, {
    Widget? icon,
    double iconSize = 48.0,
    required String title,
    required String description,
    List<Widget>? actions,
    LinkjoyAnimalShock? config,
    LinkjoyAnimalKnew gravity = LinkjoyAnimalKnew.center,
  }) {
    final dialogConfig = config ?? common;

    Widget mainContent = _linkjoyYourselfAnimal(
      context: context,
      icon: icon,
      iconSize: iconSize,
      title: title,
      description: description,
      actions: actions,
      config: config,
      confirmText: '',
    );

    if (gravity == LinkjoyAnimalKnew.bottom) {
      return bottom(context: context, child: mainContent, config: dialogConfig);
    }

    return base(context: context, child: mainContent, config: dialogConfig);
  }

  static Future<bool?> showSimpleDialog(
    BuildContext context, {
    required String title,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    List<Widget>? actions,
    LinkjoyAnimalShock? config,
    LinkjoyAnimalKnew gravity = LinkjoyAnimalKnew.center,
  }) {
    final dialogConfig = config ?? common;

    Widget mainContent = _linkjoyButAnimal(
      context: context,
      title: title,
      confirmText: confirmText,
      cancelText: cancelText,
      onConfirm: onConfirm,
      onCancel: onCancel,
    );

    if (gravity == LinkjoyAnimalKnew.bottom) {
      return bottom(context: context, child: mainContent, config: dialogConfig);
    }

    return base(context: context, child: mainContent, config: dialogConfig);
  }

  static Future<bool?> showOptionsDialog(
    BuildContext context, {
    required List<Widget> options,
    required String title,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    List<Widget>? actions,
    LinkjoyAnimalShock? config,
    LinkjoyAnimalKnew gravity = LinkjoyAnimalKnew.center,
  }) {
    final dialogConfig = config ?? common;

    Widget mainContent = _linkjoyCompromiseAnimal(
      context: context,
      options: options,
      title: title,
      confirmText: confirmText,
      cancelText: cancelText,
      onConfirm: onConfirm,
      onCancel: onCancel,
    );

    if (gravity == LinkjoyAnimalKnew.bottom) {
      return bottom(context: context, child: mainContent, config: dialogConfig);
    }

    return base(context: context, child: mainContent, config: dialogConfig);
  }

  static Widget _linkjoyYourselfAnimal({
    Widget? icon,
    double iconSize = 48.0,
    required BuildContext context,
    required String title,
    String? description,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    List<Widget>? actions,
    LinkjoyAnimalShock? config,
  }) {
    final btns =
        actions ??
        _linkjoyYourselfYum(onConfirm, confirmText, cancelText, onCancel);

    Widget childWidget = Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            SizedBox(width: iconSize, height: iconSize, child: icon),
            LinkjoyFeynman.v12,
          ],

          Text(
            title,
            style: LinkjoyMarshaHater.title1_B,
            textAlign: TextAlign.center,
          ),

          if (description != null) ...[
            LinkjoyFeynman.v12,
            Text(
              description,
              style: LinkjoyMarshaHater.body_R,
              textAlign: TextAlign.center,
            ),
          ],
          LinkjoyFeynman.v24,
          ...btns,
        ],
      ),
    );

    return childWidget;
  }

  static List<Widget> _linkjoyYourselfYum(
    VoidCallback? onConfirm,
    String confirmText,
    String? cancelText,
    VoidCallback? onCancel,
  ) {
    List<Widget> actionWidgets = [
      LinkjoyUiYum.primaryLarge()
          .width(220)
          .click(() => onConfirm?.call())
          .text(confirmText),

      if (cancelText != null) ...[
        LinkjoyFeynman.v12,
        LinkjoyUiYum.lightOutlineButton()
            .width(220)
            .click(() => onCancel?.call())
            .text(cancelText),
      ],
    ];
    return actionWidgets;
  }

  static Widget _linkjoyDespiteFrootAnimal({
    required BuildContext context,
    required List<Widget> icons,
    required String title,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    List<Widget>? actions,
  }) {
    List<Widget> actionWidgets = _linkjoyYourselfYum(
      onConfirm,
      confirmText,
      cancelText,
      onCancel,
    );

    final btns = actions ?? actionWidgets;

    Widget childWidget = Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: LinkjoyMarshaHater.title1_B),
          LinkjoyFeynman.v24,
          ...icons,
          LinkjoyFeynman.v24,
          ...btns,
        ],
      ),
    );

    return childWidget;
  }

  static Widget _linkjoyButAnimal({
    required BuildContext context,
    required String title,
    required String confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    List<Widget>? actions,
  }) {
    final btns =
        actions ??
        _linkjoyKudosYum(cancelText, onCancel, onConfirm, confirmText);

    Widget childWidget = Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: LinkjoyMarshaHater.title1_B),
          LinkjoyFeynman.v32,
          Row(children: btns),
        ],
      ),
    );

    return childWidget;
  }

  static List<Widget> _linkjoyKudosYum(
    String? cancelText,
    VoidCallback? onCancel,
    VoidCallback? onConfirm,
    String confirmText,
  ) {
    List<Widget> actionWidgets = [
      if (cancelText != null) ...[
        Expanded(
          child: LinkjoyUiYum.lightOutlineButton()
              .height(LinkjoyUiYum.hRegular)
              .click(() => onCancel?.call())
              .text(cancelText),
        ),
        LinkjoyFeynman.h12,
      ],

      Expanded(
        flex: cancelText != null ? 1 : 2,
        child: LinkjoyUiYum.primaryLarge()
            .height(LinkjoyUiYum.hRegular)
            .click(() => onConfirm?.call())
            .text(confirmText),
      ),
    ];
    return actionWidgets;
  }

  static Widget _linkjoyCompromiseAnimal({
    required BuildContext context,
    required String title,
    required String confirmText,
    required List<Widget> options,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    List<Widget>? actions,
  }) {
    final btns =
        actions ??
        _linkjoyYourselfYum(onConfirm, confirmText, cancelText, onCancel);

    Widget childWidget = Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: LinkjoyMarshaHater.title1_B),
          LinkjoyFeynman.v24,
          ...options,
          LinkjoyFeynman.v24,
          ...btns,
        ],
      ),
    );

    return childWidget;
  }

  static Future<void> alert({
    required BuildContext context,
    required String title,
    required String content,
    Widget? icon,
    LinkjoyAnimalShock config = const LinkjoyAnimalShock(),
  }) {
    return base(
      context: context,
      config: config,
      child: _buildDialogContent(
        title: title,
        content: content,
        icon: icon,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  static Future<bool?> confirm({
    required BuildContext context,
    required String title,
    required String content,
    Widget? icon,
    LinkjoyAnimalShock config = const LinkjoyAnimalShock(),
  }) {
    return base<bool>(
      context: context,
      config: config,
      child: _buildDialogContent(
        title: title,
        content: content,
        icon: icon,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  static Future<String?> prompt({
    required BuildContext context,
    required String title,
    String? hintText,
    TextInputType? keyboardType,
    LinkjoyAnimalShock config = const LinkjoyAnimalShock(),
  }) {
    final controller = TextEditingController();
    return base<String>(
      context: context,
      config: config,
      child: _buildDialogContent(
        title: title,
        content: '',
        actions: [
          TextField(
            controller: controller,
            decoration: InputDecoration(hintText: hintText),
            keyboardType: keyboardType,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('取消'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, controller.text),
                child: const Text('确定'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Future<T?> base<T>({
    required BuildContext context,
    required Widget child,
    LinkjoyAnimalShock config = const LinkjoyAnimalShock(),
    RouteSettings? routeSettings,
  }) async {
    final result = await showDialog<T>(
      context: context,
      barrierDismissible: config.barrierDismissible,
      barrierColor: config.barrierColor,
      builder: (context) => _buildDialogWidget(child, config),
      routeSettings: routeSettings,
    );

    return result;
  }

  static Widget _buildDialogWidget(Widget child, LinkjoyAnimalShock config) {
    return Dialog(
      insetPadding: config.insetPadding,
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Container(
        margin: config.margin,
        decoration: config.decoration != null
            ? BoxDecoration(
                color: config.decoration is BoxDecoration
                    ? (config.decoration as BoxDecoration).color
                    : config.backgroundColor,
                image: config.decoration is BoxDecoration
                    ? (config.decoration as BoxDecoration).image
                    : null,
                borderRadius: BorderRadius.circular(config.borderRadius),
                boxShadow: config.shadow,
              )
            : BoxDecoration(
                color: config.backgroundColor,
                borderRadius: BorderRadius.circular(config.borderRadius),
                boxShadow: config.shadow,
              ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(config.borderRadius),
          child: Material(color: config.backgroundColor, child: child),
        ),
      ),
    );
  }

  static Widget _buildDialogContent({
    required String title,
    required String content,
    Widget? icon,
    List<Widget>? actions,
    EdgeInsetsGeometry padding = const EdgeInsets.all(20),
    TextAlign contentAlign = TextAlign.center,
  }) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (icon != null) ...[
            Center(child: icon),
            const SizedBox(height: 16),
          ],
          Text(title, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          Text(content, textAlign: contentAlign),
          if (actions != null) ...[const SizedBox(height: 24), ...actions],
        ],
      ),
    );
  }

  static Future<int?> multiChoice({
    required BuildContext context,
    required String title,
    required List<String> options,
    Widget? icon,
    LinkjoyAnimalShock config = const LinkjoyAnimalShock(),
  }) {
    return base<int>(
      context: context,
      config: config,
      child: _buildDialogContent(
        title: title,
        content: '',
        icon: icon,
        actions: [
          ...options.asMap().entries.map(
            (entry) => Column(
              children: [
                ListTile(
                  title: Text(entry.value),
                  onTap: () => Navigator.pop(context, entry.key),
                ),
                if (entry.key != options.length - 1) const Divider(height: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Future<T?> bottom<T>({
    required BuildContext context,
    required Widget child,
    LinkjoyAnimalShock config = const LinkjoyAnimalShock(),
  }) async {
    final result = await showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: config.barrierColor,
      isDismissible: config.barrierDismissible,
      builder: (context) => Container(
        margin: config.margin,
        padding: config.insetPadding,
        decoration:
            config.decoration ??
            BoxDecoration(
              color: config.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(config.borderRadius),
                topRight: Radius.circular(config.borderRadius),
              ),
            ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(config.borderRadius),
            topRight: Radius.circular(config.borderRadius),
          ),
          child: Material(
            color: config.backgroundColor,
            child: SafeArea(child: child),
          ),
        ),
      ),
    );

    return result;
  }
}

class LinkjoyAnimalShock {
  final bool barrierDismissible;

  final Color barrierColor;

  final EdgeInsets insetPadding;

  final Decoration? decoration;

  final Color backgroundColor;

  final double borderRadius;

  final EdgeInsets? margin;

  final List<BoxShadow>? shadow;

  const LinkjoyAnimalShock({
    this.barrierDismissible = true,
    this.barrierColor = Colors.black45,
    this.insetPadding = const EdgeInsets.all(24),
    this.decoration,
    this.backgroundColor = Colors.white,
    this.borderRadius = 12,
    this.margin,
    this.shadow,
  });

  LinkjoyAnimalShock copyWith({
    bool? barrierDismissible,
    Color? barrierColor,
    EdgeInsets? insetPadding,
    Decoration? decoration,
    Color? backgroundColor,
    double? borderRadius,
    EdgeInsets? margin,
    List<BoxShadow>? shadow,
  }) {
    return LinkjoyAnimalShock(
      barrierDismissible: barrierDismissible ?? this.barrierDismissible,
      barrierColor: barrierColor ?? this.barrierColor,
      insetPadding: insetPadding ?? this.insetPadding,
      decoration: decoration ?? this.decoration,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
      margin: margin ?? this.margin,
      shadow: shadow ?? this.shadow,
    );
  }
}

enum LinkjoyAnimalKnew { center, bottom }
