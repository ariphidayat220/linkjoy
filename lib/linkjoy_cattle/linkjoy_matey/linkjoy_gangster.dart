import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../linkjoy_ui/linkjoy_finding.dart';

enum LinkjoyGangsterParagraph {
  low,

  normal,

  high,

  highest;

  int get value {
    switch (this) {
      case LinkjoyGangsterParagraph.low:
        return 1;
      case LinkjoyGangsterParagraph.normal:
        return 2;
      case LinkjoyGangsterParagraph.high:
        return 3;
      case LinkjoyGangsterParagraph.highest:
        return 4;
    }
  }
}

class _LinkjoyGangsterBreezeSubjective {
  final String? title;
  final String? message;

  final LinkjoyGangsterParagraph priority;
  final bool waitForHighPriority;

  final Widget? titleText;
  final Widget? messageText;
  final Widget? icon;
  final bool shouldIconPulse;
  final double? maxWidth;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final Color backgroundColor;
  final Color? leftBarIndicatorColor;
  final List<BoxShadow>? boxShadows;
  final Gradient? backgroundGradient;
  final Widget? mainButton;
  final OnTap? onTap;
  final Duration? duration;
  final bool isDismissible;
  final DismissDirection? dismissDirection;
  final bool showProgressIndicator;
  final AnimationController? progressIndicatorController;
  final Color? progressIndicatorBackgroundColor;
  final Animation<Color>? progressIndicatorValueColor;
  final SnackPosition snackPosition;
  final SnackStyle snackStyle;
  final Curve forwardAnimationCurve;
  final Curve reverseAnimationCurve;
  final Duration animationDuration;
  final double barBlur;
  final double overlayBlur;
  final Color? overlayColor;
  final Form? userInputForm;
  final SnackbarStatusCallback? snackbarStatus;
  final Color? colorText;

  _LinkjoyGangsterBreezeSubjective({
    this.title,
    this.message,
    this.priority = LinkjoyGangsterParagraph.normal,
    this.waitForHighPriority = true,
    this.titleText,
    this.messageText,
    this.icon,
    this.shouldIconPulse = true,
    this.maxWidth,
    this.margin = const EdgeInsets.all(0.0),
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = 0.0,
    this.borderColor,
    this.borderWidth = 1.0,
    this.backgroundColor = const Color(0xFF303030),
    this.leftBarIndicatorColor,
    this.boxShadows,
    this.backgroundGradient,
    this.mainButton,
    this.onTap,
    this.duration,
    this.isDismissible = true,
    this.dismissDirection,
    this.showProgressIndicator = false,
    this.progressIndicatorController,
    this.progressIndicatorBackgroundColor,
    this.progressIndicatorValueColor,
    this.snackPosition = SnackPosition.TOP,
    this.snackStyle = SnackStyle.FLOATING,
    this.forwardAnimationCurve = Curves.easeOutCirc,
    this.reverseAnimationCurve = Curves.easeOutCirc,
    this.animationDuration = const Duration(seconds: 1),
    this.barBlur = 0.0,
    this.overlayBlur = 0.0,
    this.overlayColor = Colors.transparent,
    this.userInputForm,
    this.snackbarStatus,
    this.colorText,
  });
}

class LinkjoyGangster {
  static final LinkjoyGangster _instance = LinkjoyGangster._internal();

  factory LinkjoyGangster() {
    return _instance;
  }

  LinkjoyGangster._internal();

  static LinkjoyGangster get instance => _instance;

  @Deprecated('使用 LinkjoyGangster.instance 代替')
  static LinkjoyGangster get() {
    return _instance;
  }

  final _queue = <_LinkjoyGangsterBreezeSubjective>[];
  final _lowPriorityQueue = <_LinkjoyGangsterBreezeSubjective>[];
  _LinkjoyGangsterBreezeSubjective? _currentSnackbar;
  bool _isProcessing = false;
  bool _isHighPriorityActive = false;

  static void showBasic(
    String? title,
    String? message, {
    Widget? icon,
    LinkjoyGangsterParagraph? priority,
    SnackPosition? snackPosition,
    Widget? mainButton,
    Duration? duration,
  }) {
    show(
      title: title,
      message: message,
      colorText: LinkjoyAve.white,
      icon: icon,
      priority: priority ?? LinkjoyGangsterParagraph.normal,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      mainButton: mainButton ?? _close(),
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  static void showSuccess(
    String title,
    String message, {
    LinkjoyGangsterParagraph? priority,
    SnackPosition? snackPosition,
    Widget? mainButton,
  }) {
    show(
      title: title,
      message: message,
      colorText: LinkjoyAve.white,
      icon: Icon(
        Icons.check_circle,
        color: LinkjoyAve.success,
        size: LinkjoyDiscard.iconLarge,
      ),
      priority: priority ?? LinkjoyGangsterParagraph.normal,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      mainButton: mainButton ?? _close(),
    );
  }

  static Widget _close() {
    return LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
      () => Get.closeCurrentSnackbar(),
      size: LinkjoyBookshelf.xs,
    );
  }

  static void showInfo(
    String title,
    String message, {
    LinkjoyGangsterParagraph? priority,
    SnackPosition? snackPosition,
    Widget? mainButton,
  }) {
    show(
      title: title,
      message: message,
      colorText: LinkjoyAve.white,
      icon: Icon(
        Icons.info,
        color: LinkjoyAve.info,
        size: LinkjoyDiscard.iconLarge,
      ),
      priority: priority ?? LinkjoyGangsterParagraph.normal,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      mainButton: mainButton ?? _close(),
    );
  }

  static void showError(
    String title,
    String message, {
    LinkjoyGangsterParagraph? priority,
    SnackPosition? snackPosition,
    Widget? mainButton,
  }) {
    show(
      title: title,
      message: message,
      colorText: LinkjoyAve.white,
      icon: Icon(
        Icons.error,
        color: LinkjoyAve.error,
        size: LinkjoyDiscard.iconLarge,
      ),
      priority: priority ?? LinkjoyGangsterParagraph.normal,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      mainButton: mainButton ?? _close(),
    );
  }

  static void showWarning(
    String title,
    String message, {
    LinkjoyGangsterParagraph? priority,
    SnackPosition? snackPosition,
    Widget? mainButton,
  }) {
    show(
      title: title,
      message: message,
      colorText: LinkjoyAve.white,
      icon: Icon(
        Icons.warning_rounded,
        color: LinkjoyAve.warning,
        size: LinkjoyDiscard.iconLarge,
      ),
      priority: priority ?? LinkjoyGangsterParagraph.normal,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      mainButton: mainButton ?? _close(),
    );
  }

  static void show({
    String? title,
    String? message,
    LinkjoyGangsterParagraph priority = LinkjoyGangsterParagraph.normal,
    bool waitForHighPriority = true,
    Widget? titleText,
    Widget? messageText,
    Widget? icon,
    bool shouldIconPulse = true,
    double? maxWidth,
    EdgeInsets margin = const EdgeInsets.all(16),
    EdgeInsets padding = const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 12,
    ),
    double borderRadius = 12,
    Color? borderColor,
    double borderWidth = 1.0,
    Color backgroundColor = LinkjoyAve.snackbarBg,
    Color? leftBarIndicatorColor,
    List<BoxShadow>? boxShadows,
    Gradient? backgroundGradient,
    Widget? mainButton,
    void Function(GetSnackBar)? onTap,
    Duration duration = const Duration(seconds: 2),
    bool isDismissible = true,
    DismissDirection? dismissDirection,
    bool showProgressIndicator = false,
    AnimationController? progressIndicatorController,
    Color? progressIndicatorBackgroundColor,
    Animation<Color>? progressIndicatorValueColor,
    SnackPosition snackPosition = SnackPosition.TOP,
    SnackStyle snackStyle = SnackStyle.FLOATING,
    Curve forwardAnimationCurve = Curves.easeOutCirc,
    Curve reverseAnimationCurve = Curves.easeOutCirc,
    Duration animationDuration = const Duration(milliseconds: 500),
    double barBlur = 0.0,
    double overlayBlur = 0.0,
    Color? overlayColor,
    Form? userInputForm,
    void Function(SnackbarStatus?)? snackbarStatus,
    Color? colorText,
  }) {
    _instance._show(
      title: title,
      message: message,
      priority: priority,
      waitForHighPriority: waitForHighPriority,
      titleText: titleText,
      messageText: messageText,
      icon: icon,
      shouldIconPulse: shouldIconPulse,
      maxWidth: maxWidth,
      margin: margin,
      padding: padding,
      borderRadius: borderRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
      backgroundColor: backgroundColor,
      leftBarIndicatorColor: leftBarIndicatorColor,
      boxShadows: boxShadows,
      backgroundGradient: backgroundGradient,
      mainButton: mainButton,
      onTap: onTap,
      duration: duration,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
      showProgressIndicator: showProgressIndicator,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
      progressIndicatorValueColor: progressIndicatorValueColor,
      snackPosition: snackPosition,
      snackStyle: snackStyle,
      forwardAnimationCurve: forwardAnimationCurve,
      reverseAnimationCurve: reverseAnimationCurve,
      animationDuration: animationDuration,
      barBlur: barBlur,
      overlayBlur: overlayBlur,
      overlayColor: overlayColor,
      userInputForm: userInputForm,
      snackbarStatus: snackbarStatus,
      colorText: colorText,
    );
  }

  void _show({
    String? title,
    String? message,
    LinkjoyGangsterParagraph priority = LinkjoyGangsterParagraph.normal,
    bool waitForHighPriority = true,
    Widget? titleText,
    Widget? messageText,
    Widget? icon,
    bool shouldIconPulse = true,
    double? maxWidth,
    EdgeInsets margin = const EdgeInsets.all(0.0),
    EdgeInsets padding = const EdgeInsets.all(16),
    double borderRadius = 0.0,
    Color? borderColor,
    double borderWidth = 1.0,
    Color backgroundColor = const Color(0xFF303030),
    Color? leftBarIndicatorColor,
    List<BoxShadow>? boxShadows,
    Gradient? backgroundGradient,
    Widget? mainButton,
    void Function(GetSnackBar)? onTap,
    Duration? duration,
    bool isDismissible = true,
    DismissDirection? dismissDirection,
    bool showProgressIndicator = false,
    AnimationController? progressIndicatorController,
    Color? progressIndicatorBackgroundColor,
    Animation<Color>? progressIndicatorValueColor,
    SnackPosition snackPosition = SnackPosition.TOP,
    SnackStyle snackStyle = SnackStyle.FLOATING,
    Curve forwardAnimationCurve = Curves.easeOutCirc,
    Curve reverseAnimationCurve = Curves.easeOutCirc,
    Duration animationDuration = const Duration(seconds: 1),
    double barBlur = 0.0,
    double overlayBlur = 0.0,
    Color? overlayColor,
    Form? userInputForm,
    void Function(SnackbarStatus?)? snackbarStatus,
    Color? colorText,
  }) {
    final item = _LinkjoyGangsterBreezeSubjective(
      title: title,
      message: message,
      priority: priority,
      waitForHighPriority: waitForHighPriority,
      titleText: titleText,
      messageText: messageText,
      icon: icon,
      shouldIconPulse: shouldIconPulse,
      maxWidth: maxWidth,
      margin: margin,
      padding: padding,
      borderRadius: borderRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
      backgroundColor: backgroundColor,
      leftBarIndicatorColor: leftBarIndicatorColor,
      boxShadows: boxShadows,
      backgroundGradient: backgroundGradient,
      mainButton: mainButton,
      onTap: onTap,
      duration: duration,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
      showProgressIndicator: showProgressIndicator,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
      progressIndicatorValueColor: progressIndicatorValueColor,
      snackPosition: snackPosition,
      snackStyle: snackStyle,
      forwardAnimationCurve: forwardAnimationCurve,
      reverseAnimationCurve: reverseAnimationCurve,
      animationDuration: animationDuration,
      barBlur: barBlur,
      overlayBlur: overlayBlur,
      overlayColor: overlayColor,
      userInputForm: userInputForm,
      snackbarStatus: snackbarStatus,
      colorText: colorText,
    );

    if (priority == LinkjoyGangsterParagraph.high ||
        priority == LinkjoyGangsterParagraph.highest) {
      _showImmediate(item);
    } else if (priority == LinkjoyGangsterParagraph.low) {
      _lowPriorityQueue.add(item);
      if (!_isHighPriorityActive && _currentSnackbar == null) {
        _processQueue();
      }
    } else {
      if (waitForHighPriority || _isHighPriorityActive) {
        _queue.add(item);
      } else {
        _showImmediate(item);
      }
      if (!_isHighPriorityActive && _currentSnackbar == null) {
        _processQueue();
      }
    }
  }

  static void showHighPriority({
    String? title,
    String? message,
    Widget? titleText,
    Widget? messageText,
    Widget? icon,
    bool shouldIconPulse = true,
    double? maxWidth,
    EdgeInsets margin = const EdgeInsets.all(0.0),
    EdgeInsets padding = const EdgeInsets.all(16),
    double borderRadius = 0.0,
    Color? borderColor,
    double borderWidth = 1.0,
    Color backgroundColor = const Color(0xFF303030),
    Color? leftBarIndicatorColor,
    List<BoxShadow>? boxShadows,
    Gradient? backgroundGradient,
    Widget? mainButton,
    void Function(GetSnackBar)? onTap,
    Duration duration = const Duration(seconds: 3),
    bool isDismissible = true,
    DismissDirection? dismissDirection,
    bool showProgressIndicator = false,
    AnimationController? progressIndicatorController,
    Color? progressIndicatorBackgroundColor,
    Animation<Color>? progressIndicatorValueColor,
    SnackPosition snackPosition = SnackPosition.TOP,
    SnackStyle snackStyle = SnackStyle.FLOATING,
    Curve forwardAnimationCurve = Curves.easeOutCirc,
    Curve reverseAnimationCurve = Curves.easeOutCirc,
    Duration animationDuration = const Duration(seconds: 1),
    double barBlur = 0.0,
    double overlayBlur = 0.0,
    Color? overlayColor,
    Form? userInputForm,
    void Function(SnackbarStatus?)? snackbarStatus,
    Color? colorText,
  }) {
    show(
      title: title,
      message: message,
      priority: LinkjoyGangsterParagraph.high,
      titleText: titleText,
      messageText: messageText,
      icon: icon,
      shouldIconPulse: shouldIconPulse,
      maxWidth: maxWidth,
      margin: margin,
      padding: padding,
      borderRadius: borderRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
      backgroundColor: backgroundColor,
      leftBarIndicatorColor: leftBarIndicatorColor,
      boxShadows: boxShadows,
      backgroundGradient: backgroundGradient,
      mainButton: mainButton,
      onTap: onTap,
      duration: duration,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
      showProgressIndicator: showProgressIndicator,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
      progressIndicatorValueColor: progressIndicatorValueColor,
      snackPosition: snackPosition,
      snackStyle: snackStyle,
      forwardAnimationCurve: forwardAnimationCurve,
      reverseAnimationCurve: reverseAnimationCurve,
      animationDuration: animationDuration,
      barBlur: barBlur,
      overlayBlur: overlayBlur,
      overlayColor: overlayColor,
      userInputForm: userInputForm,
      snackbarStatus: snackbarStatus,
      colorText: colorText,
    );
  }

  static void showHighest({
    String? title,
    String? message,
    Widget? titleText,
    Widget? messageText,
    Widget? icon,
    bool shouldIconPulse = true,
    double? maxWidth,
    EdgeInsets margin = const EdgeInsets.all(0.0),
    EdgeInsets padding = const EdgeInsets.all(16),
    double borderRadius = 0.0,
    Color? borderColor,
    double borderWidth = 1.0,
    Color backgroundColor = const Color(0xFF303030),
    Color? leftBarIndicatorColor,
    List<BoxShadow>? boxShadows,
    Gradient? backgroundGradient,
    Widget? mainButton,
    void Function(GetSnackBar)? onTap,
    Duration duration = const Duration(seconds: 3),
    bool isDismissible = true,
    DismissDirection? dismissDirection,
    bool showProgressIndicator = false,
    AnimationController? progressIndicatorController,
    Color? progressIndicatorBackgroundColor,
    Animation<Color>? progressIndicatorValueColor,
    SnackPosition snackPosition = SnackPosition.TOP,
    SnackStyle snackStyle = SnackStyle.FLOATING,
    Curve forwardAnimationCurve = Curves.easeOutCirc,
    Curve reverseAnimationCurve = Curves.easeOutCirc,
    Duration animationDuration = const Duration(seconds: 1),
    double barBlur = 0.0,
    double overlayBlur = 0.0,
    Color? overlayColor,
    Form? userInputForm,
    void Function(SnackbarStatus?)? snackbarStatus,
    Color? colorText,
  }) {
    show(
      title: title,
      message: message,
      priority: LinkjoyGangsterParagraph.highest,
      titleText: titleText,
      messageText: messageText,
      icon: icon,
      shouldIconPulse: shouldIconPulse,
      maxWidth: maxWidth,
      margin: margin,
      padding: padding,
      borderRadius: borderRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
      backgroundColor: backgroundColor,
      leftBarIndicatorColor: leftBarIndicatorColor,
      boxShadows: boxShadows,
      backgroundGradient: backgroundGradient,
      mainButton: mainButton,
      onTap: onTap,
      duration: duration,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
      showProgressIndicator: showProgressIndicator,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
      progressIndicatorValueColor: progressIndicatorValueColor,
      snackPosition: snackPosition,
      snackStyle: snackStyle,
      forwardAnimationCurve: forwardAnimationCurve,
      reverseAnimationCurve: reverseAnimationCurve,
      animationDuration: animationDuration,
      barBlur: barBlur,
      overlayBlur: overlayBlur,
      overlayColor: overlayColor,
      userInputForm: userInputForm,
      snackbarStatus: snackbarStatus,
      colorText: colorText,
    );
  }

  static void showLow({
    String? title,
    String? message,
    Widget? titleText,
    Widget? messageText,
    Widget? icon,
    bool shouldIconPulse = true,
    double? maxWidth,
    EdgeInsets margin = const EdgeInsets.all(0.0),
    EdgeInsets padding = const EdgeInsets.all(16),
    double borderRadius = 0.0,
    Color? borderColor,
    double borderWidth = 1.0,
    Color backgroundColor = const Color(0xFF303030),
    Color? leftBarIndicatorColor,
    List<BoxShadow>? boxShadows,
    Gradient? backgroundGradient,
    Widget? mainButton,
    void Function(GetSnackBar)? onTap,
    Duration duration = const Duration(seconds: 3),
    bool isDismissible = true,
    DismissDirection? dismissDirection,
    bool showProgressIndicator = false,
    AnimationController? progressIndicatorController,
    Color? progressIndicatorBackgroundColor,
    Animation<Color>? progressIndicatorValueColor,
    SnackPosition snackPosition = SnackPosition.TOP,
    SnackStyle snackStyle = SnackStyle.FLOATING,
    Curve forwardAnimationCurve = Curves.easeOutCirc,
    Curve reverseAnimationCurve = Curves.easeOutCirc,
    Duration animationDuration = const Duration(seconds: 1),
    double barBlur = 0.0,
    double overlayBlur = 0.0,
    Color? overlayColor,
    Form? userInputForm,
    void Function(SnackbarStatus?)? snackbarStatus,
    Color? colorText,
  }) {
    show(
      title: title,
      message: message,
      priority: LinkjoyGangsterParagraph.low,
      titleText: titleText,
      messageText: messageText,
      icon: icon,
      shouldIconPulse: shouldIconPulse,
      maxWidth: maxWidth,
      margin: margin,
      padding: padding,
      borderRadius: borderRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
      backgroundColor: backgroundColor,
      leftBarIndicatorColor: leftBarIndicatorColor,
      boxShadows: boxShadows,
      backgroundGradient: backgroundGradient,
      mainButton: mainButton,
      onTap: onTap,
      duration: duration,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
      showProgressIndicator: showProgressIndicator,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
      progressIndicatorValueColor: progressIndicatorValueColor,
      snackPosition: snackPosition,
      snackStyle: snackStyle,
      forwardAnimationCurve: forwardAnimationCurve,
      reverseAnimationCurve: reverseAnimationCurve,
      animationDuration: animationDuration,
      barBlur: barBlur,
      overlayBlur: overlayBlur,
      overlayColor: overlayColor,
      userInputForm: userInputForm,
      snackbarStatus: snackbarStatus,
      colorText: colorText,
    );
  }

  void cancelLowPriority() {
    _lowPriorityQueue.clear();
  }

  void cancelAll() {
    _queue.clear();
    _lowPriorityQueue.clear();
  }

  void clearAll() {
    cancelAll();
    Get.closeAllSnackbars();
    _currentSnackbar = null;
    _isProcessing = false;
    _isHighPriorityActive = false;
  }

  void _showImmediate(_LinkjoyGangsterBreezeSubjective item) {
    if (_currentSnackbar != null &&
        (_currentSnackbar!.priority == LinkjoyGangsterParagraph.low ||
            (item.priority == LinkjoyGangsterParagraph.highest &&
                _currentSnackbar!.priority !=
                    LinkjoyGangsterParagraph.highest))) {
      Get.closeCurrentSnackbar();
    }

    _currentSnackbar = item;
    _isHighPriorityActive =
        item.priority == LinkjoyGangsterParagraph.high ||
        item.priority == LinkjoyGangsterParagraph.highest;

    _displaySnackbar(item, () {
      _currentSnackbar = null;
      final wasHighPriority = _isHighPriorityActive;
      if (item.priority == LinkjoyGangsterParagraph.high ||
          item.priority == LinkjoyGangsterParagraph.highest) {
        _isHighPriorityActive = false;
      }

      if (wasHighPriority && _lowPriorityQueue.isNotEmpty) {
        _processQueue();
      } else if (_queue.isNotEmpty || _lowPriorityQueue.isNotEmpty) {
        _processQueue();
      }
    });
  }

  void _processQueue() {
    if (_isProcessing || _isHighPriorityActive) return;
    if (_queue.isEmpty && _lowPriorityQueue.isEmpty) return;

    _isProcessing = true;

    if (_queue.isNotEmpty) {
      final item = _queue.removeAt(0);
      _currentSnackbar = item;
      _displaySnackbar(item, () {
        _currentSnackbar = null;
        _isProcessing = false;
        _processQueue();
      });
    } else if (_lowPriorityQueue.isNotEmpty) {
      if (!_isHighPriorityActive) {
        final item = _lowPriorityQueue.removeAt(0);
        _currentSnackbar = item;
        _displaySnackbar(item, () {
          _currentSnackbar = null;
          _isProcessing = false;
          if (!_isHighPriorityActive) {
            _processQueue();
          }
        });
      } else {
        _isProcessing = false;
      }
    } else {
      _isProcessing = false;
    }
  }

  void _displaySnackbar(
    _LinkjoyGangsterBreezeSubjective item,
    VoidCallback? onComplete,
  ) {
    final snack = GetSnackBar(
      title: item.title,
      message: item.message,
      titleText: item.titleText,
      messageText: item.messageText,
      icon: item.icon,
      shouldIconPulse: item.shouldIconPulse,
      maxWidth: item.maxWidth,
      margin: item.margin,
      padding: item.padding,
      borderRadius: item.borderRadius,
      borderColor: item.borderColor,
      borderWidth: item.borderWidth,
      backgroundColor: item.backgroundColor,
      leftBarIndicatorColor: item.leftBarIndicatorColor,
      boxShadows: item.boxShadows,
      backgroundGradient: item.backgroundGradient,
      mainButton: item.mainButton,
      onTap: item.onTap,
      duration: item.duration,
      isDismissible: item.isDismissible,
      dismissDirection: item.dismissDirection,
      showProgressIndicator: item.showProgressIndicator,
      progressIndicatorController: item.progressIndicatorController,
      progressIndicatorBackgroundColor: item.progressIndicatorBackgroundColor,
      progressIndicatorValueColor: item.progressIndicatorValueColor,
      snackPosition: item.snackPosition,
      snackStyle: item.snackStyle,
      forwardAnimationCurve: item.forwardAnimationCurve,
      reverseAnimationCurve: item.reverseAnimationCurve,
      animationDuration: item.animationDuration,
      barBlur: item.barBlur,
      overlayBlur: item.overlayBlur,
      overlayColor: item.overlayColor,
      userInputForm: item.userInputForm,
      snackbarStatus: (status) {
        item.snackbarStatus?.call(status);
        if (status == SnackbarStatus.CLOSED ||
            status == SnackbarStatus.CLOSING) {
          onComplete?.call();
        }
      },
    );

    snack.show();
  }

  Map<String, dynamic> get status {
    return {
      'current': _currentSnackbar?.title ?? 'none',
      'queueLength': _queue.length,
      'lowPriorityQueueLength': _lowPriorityQueue.length,
      'isHighPriorityActive': _isHighPriorityActive,
      'isProcessing': _isProcessing,
    };
  }
}

extension PrioritySnackbarExtension on GetInterface {
  void showPrioritySnackbar(
    String? title,
    String? message, {
    LinkjoyGangsterParagraph priority = LinkjoyGangsterParagraph.high,
    Widget? titleText,
    Widget? messageText,
    Widget? icon,
    bool shouldIconPulse = true,
    double? maxWidth,
    EdgeInsets margin = const EdgeInsets.all(0.0),
    EdgeInsets padding = const EdgeInsets.all(16),
    double borderRadius = 0.0,
    Color? borderColor,
    double borderWidth = 1.0,
    Color backgroundColor = const Color(0xFF303030),
    Color? leftBarIndicatorColor,
    List<BoxShadow>? boxShadows,
    Gradient? backgroundGradient,
    Widget? mainButton,
    void Function(GetSnackBar)? onTap,
    Duration duration = const Duration(seconds: 2),
    bool isDismissible = true,
    DismissDirection? dismissDirection,
    bool showProgressIndicator = false,
    AnimationController? progressIndicatorController,
    Color? progressIndicatorBackgroundColor,
    Animation<Color>? progressIndicatorValueColor,
    SnackPosition snackPosition = SnackPosition.TOP,
    SnackStyle snackStyle = SnackStyle.FLOATING,
    Curve forwardAnimationCurve = Curves.easeOutCirc,
    Curve reverseAnimationCurve = Curves.easeOutCirc,
    Duration animationDuration = const Duration(seconds: 1),
    double barBlur = 0.0,
    double overlayBlur = 0.0,
    Color? overlayColor,
    Form? userInputForm,
    void Function(SnackbarStatus?)? snackbarStatus,
    Color? colorText,
  }) {
    LinkjoyGangster.show(
      title: title,
      message: message,
      priority: priority,
      titleText: titleText,
      messageText: messageText,
      icon: icon,
      shouldIconPulse: shouldIconPulse,
      maxWidth: maxWidth,
      margin: margin,
      padding: padding,
      borderRadius: borderRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
      backgroundColor: backgroundColor,
      leftBarIndicatorColor: leftBarIndicatorColor,
      boxShadows: boxShadows,
      backgroundGradient: backgroundGradient,
      mainButton: mainButton,
      onTap: onTap,
      duration: duration,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
      showProgressIndicator: showProgressIndicator,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
      progressIndicatorValueColor: progressIndicatorValueColor,
      snackPosition: snackPosition,
      snackStyle: snackStyle,
      forwardAnimationCurve: forwardAnimationCurve,
      reverseAnimationCurve: reverseAnimationCurve,
      animationDuration: animationDuration,
      barBlur: barBlur,
      overlayBlur: overlayBlur,
      overlayColor: overlayColor,
      userInputForm: userInputForm,
      snackbarStatus: snackbarStatus,
      colorText: colorText,
    );
  }
}
