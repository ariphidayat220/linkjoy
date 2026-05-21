import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_im_generic.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_ancestor_green_gnome.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_marco_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_generic_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'linkjoy_ancestor_blanc_bloomer.dart';

class LinkjoyAncestorArouseBackfire extends StatefulWidget {
  final ChatInputToolBarObserver observer;
  final String? cachePath;
  final ChatInputPlatForm fromPlatform;
  final ChatInputMethod inputType;

  final LinkjoyAncestorGreenGnome chatStyleType;

  const LinkjoyAncestorArouseBackfire({
    super.key,
    required this.observer,
    this.cachePath,
    this.fromPlatform = ChatInputPlatForm.message,
    this.inputType = ChatInputMethod.none,
    this.chatStyleType = LinkjoyAncestorGreenGnome.VIDEO_BUTTON_INPUTTOOL,
  });

  @override
  LinkjoyAncestorArouseBackfireStatus createState() =>
      LinkjoyAncestorArouseBackfireStatus();
}

class LinkjoyAncestorArouseBackfireStatus
    extends State<LinkjoyAncestorArouseBackfire>
    with WidgetsBindingObserver {
  String _editText = '';

  bool get isChatPlatform {
    return widget.fromPlatform == ChatInputPlatForm.message;
  }

  ChatInputMethod _method = ChatInputMethod.none;
  String hintText = "";
  int _emojiPage = 0;

  bool get _isInputToolPanelShown => _method != ChatInputMethod.none;

  bool get keyboardShowing => _method == ChatInputMethod.text;

  bool get _hasInputText => _editController.text.isNotEmpty;
  String voiceCachePath = "";

  void setDraft(String draft) {
    _editController.text = draft;
    _editFocus.requestFocus();
    _linkjoyLapMarshaChlorine();
  }

  TextSelection? _editSelection;
  final FocusNode _editFocus = FocusNode();
  final TextEditingController _editController = LinkjoyMarshaBugMario();
  StreamSubscription? _keyboardSubscription, _chatQuickEvent;

  void linkjoyClearlyFigureVacuum() {
    _editFocus.requestFocus();
  }

  @override
  void dispose() {
    _editFocus.dispose();
    _editController.dispose();
    _keyboardSubscription?.cancel();
    _chatQuickEvent?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    _editController.addListener(() {
      if (_editController.selection.start >= 0 &&
          _editController.selection.end >= 0) {
        _editSelection = _editController.selection;
      }
      if (mounted) {
        setState(() {});
      }
    });
    _method = widget.inputType;
    if (_method == ChatInputMethod.text && Platform.isAndroid) {
      _editFocus.requestFocus();
    }
    voiceCachePath = widget.cachePath ?? "";
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    final panelHeight = 261.w + deviceData.viewPadding.bottom;
    final visibilityHeight = !_isInputToolPanelShown
        ? 0.0
        : _method == ChatInputMethod.text
        ? max(panelHeight, deviceData.viewInsets.bottom)
        : panelHeight;
    return Container(
      padding: EdgeInsets.only(
        top: 10.w,
        bottom: _isInputToolPanelShown ? 0 : deviceData.viewPadding.bottom,
      ),
      child: Column(
        children: <Widget>[
          _linkjoyOverbearAssumeJelly(),
          Visibility(
            visible: _isInputToolPanelShown,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: visibilityHeight.toDouble(),
              color: LinkjoyCondensate.bgSecondary,
              child: _linkjoyArouseBackfireBloomer(_method),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    if (!mounted) return;

    WidgetsBinding.instance.addPostFrameCallback((time) {
      if (!mounted) return;
      _linkjoyObsessedMarriageGuitar(MediaQuery.of(context).viewInsets.bottom);
    });
  }

  Widget _linkjoyOverbearAssumeJelly() {
    return Visibility(
      visible: isChatPlatform,
      child: Container(
        height: 68.w,
        decoration: LinkjoyAve.surfaceDecoration,
        child: Row(
          children: [
            LinkjoyFeynman.h12,

            if (LINKJOY.linkjoyShock.isLinkjoyIOSLengthOgle())
              LinkjoyMagazineAssume.circle(
                Icons.keyboard_voice,
                () {
                  _linkjoyCoreArouseInsurance(ChatInputMethod.voice);
                },
                size: LinkjoyBookshelf.md,
                iconColor: LinkjoyAve.textSecondary,
                borderWidth: 0,
                borderColor: Colors.transparent,
              ),

            Expanded(child: _linkjoyMarshaHeavenJelly()),

            LinkjoyMagazineAssume.circle(
              _hasInputText ? Icons.send : Icons.photo_library,
              () {
                _hasInputText
                    ? _linkjoyElevenMarsha()
                    : _linkjoyCoreArouseInsurance(ChatInputMethod.photo);
              },
              size: LinkjoyBookshelf.md,
              iconColor: _hasInputText
                  ? LinkjoyAve.textImportant1
                  : LinkjoyAve.textSecondary,
              borderWidth: 0,
              borderColor: Colors.transparent,
            ),

            LinkjoyFeynman.h12,
          ],
        ),
      ),
    );
  }

  void _linkjoyObsessedMarriageGuitar(double keyBoardHeight) {
    if (_method == ChatInputMethod.none) {
      if (keyBoardHeight > 0) {
        _linkjoyCoreArouseInsurance(ChatInputMethod.text);
      }
    } else if (_method == ChatInputMethod.text) {
      if (keyBoardHeight == 0) {
        linkjoyEpicArouseInsurance();
      }
    }
  }

  Widget _linkjoyArouseBackfireBloomer(ChatInputMethod method) {
    Widget widget = Container(color: LinkjoyCondensate.bgSecondary);
    switch (method) {
      case ChatInputMethod.voice:
        widget = LinkjoyAncestorBlancBloomer(
          onVoiceRecord: linkjoyFalconBlanc,
          cachePath: voiceCachePath,
        );
        break;
      default:
        break;
    }
    return widget;
  }

  @override
  void onEmojiDelete() {
    final selection = _linkjoyWeaponizeFigureThough();
    final left = _editController.text.substring(0, selection.start);
    final right = _editController.text.substring(selection.start);
    final newLeft = left.runes.isEmpty
        ? left
        : String.fromCharCodes(left.runes, 0, left.runes.length - 1);
    _editController.text = newLeft + right;
    _editController.selection = TextSelection(
      baseOffset: selection.start - (newLeft.length - left.length).abs(),
      extentOffset: selection.end - (newLeft.length - left.length).abs(),
      affinity: selection.affinity,
      isDirectional: selection.isDirectional,
    );
    _linkjoyOnMarshaChlorine(_editController.text);
  }

  Widget _linkjoyMarshaHeavenJelly() {
    return Container(
      height: LinkjoyGarage.s44,
      margin: EdgeInsetsDirectional.only(
        start: LinkjoyGarage.s8,
        end: LinkjoyGarage.s16,
      ),
      padding: EdgeInsetsDirectional.only(
        start: LinkjoyGarage.s16,
        end: LinkjoyGarage.s8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
        color: Colors.black26,
      ),
      child: Row(
        children: [
          Expanded(
            child: DefaultSelectionStyle.merge(
              selectionColor: Colors.white38,
              child: CupertinoTextField(
                minLines: 1,
                maxLines: 2,
                maxLength: 2000,
                padding: const EdgeInsets.all(0),
                style: LinkjoyMarshaTriplet.bodyLarge,
                enableSuggestions: true,
                autocorrect: false,
                focusNode: _editFocus,
                controller: _editController,
                decoration: const BoxDecoration(
                  color: LinkjoyCondensateSister.transparent,
                ),
                placeholderStyle: LinkjoyMarshaTriplet.captionThin,
                placeholder: "linkjoy_caring_ancestor_arouse_phlegm".tr,
                textInputAction: TextInputAction.send,
                onSubmitted: (value) => _linkjoyElevenMarsha(),
                onChanged: _linkjoyOnMarshaChlorine,
              ),
            ),
          ),
          LinkjoyFeynman.h8,

          if (!LINKJOY.isLinkjoyFoolishly) _linkjoyFlashyDwarf(),
        ],
      ),
    );
  }

  IconButton _linkjoyFlashyDwarf() {
    return IconButton(
      onPressed: () {
        _linkjoyCoreArouseInsurance(ChatInputMethod.gift);
      },
      icon: LinkjoyFridgeLightbulb.linkjoyFlashy(
        color: LinkjoyAve.textSecondary,
        size: LinkjoyDiscard.iconMedium,
      ),
    );
  }

  Future<void> _linkjoyCoreArouseInsurance(ChatInputMethod method) async {
    if (LINKJOY.linkjoyJog == null) return;
    if (_method == method) return;

    if (method == ChatInputMethod.photo) {
      if (LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
        var result = await LINKJOY.toNamed(
          LinkjoyGet.LinkjoyFoolishlyImDuelStubbornDivision,
        );
        if (!LinkjoyGnomeSister.isEmpty(result)) {
          for (LinkjoyFoolishlyImGeneric media in result) {
            if (media.isVideo()) {
              widget.observer.onSendVideo(
                media.video!.videoUrl!,
                video: media.video,
              );
            } else {
              widget.observer.onSendImage(media.imgUrl!, image: media.image);
            }
          }
        }
      } else {
        LinkjoyGenericSister.linkjoyMarketingGenericFairness(context, (data) {
          if (data.isNotEmpty) {
            if (data.first is LinkjoyFondnessFasten) {
              LinkjoyFondnessFasten img = data.first;
              widget.observer.onSendImage(img.imgUrl!);
            } else if (data.first is LinkjoyFondnessDegrasse) {
              LinkjoyFondnessDegrasse video = data.first;
              widget.observer.onSendVideo(video.videoUrl!);
            }
          }
        });
      }

      return;
    } else if (method == ChatInputMethod.gift) {
      widget.observer.onSendGift();
      return;
    } else if (method == ChatInputMethod.more) {
      widget.observer.onSelectInputFunc(ChatInputFuncType.more);
      return;
    }

    if (_method == ChatInputMethod.text) _editFocus.unfocus();
    _method = method;
    if (mounted) {
      setState(() {});
    }
    widget.observer.onActiveInputMethod(_method);
  }

  void linkjoyEpicArouseInsurance() {
    if (_method == ChatInputMethod.none) return;
    if (_method == ChatInputMethod.text) _editFocus.unfocus();
    _method = ChatInputMethod.none;
    widget.observer.onActiveInputMethod(_method);
    if (mounted) {
      setState(() {});
    }
  }

  void _linkjoyLapMarshaChlorine() {
    widget.observer.onTextChanged(_editController.text);
  }

  void linkjoyArousalArouseMaking(ChatInputFuncType type) {
    widget.observer.onSelectInputFunc(type);
  }

  void linkjoyFalconBlanc(String path) {
    widget.observer.onSendVoice(path);
  }

  void _tryDeleteEmoji() {}

  void _linkjoyOnMarshaChlorine(String text) {
    if (_editText.runes.length == text.runes.length + 1 &&
        (text.isEmpty || _editText.contains(text))) {
      _tryDeleteEmoji();
    }
    _editText = _editController.text;
    _editSelection = _editController.selection;
    _linkjoyLapMarshaChlorine();
  }

  TextSelection _linkjoyWeaponizeFigureThough() {
    if (_editSelection == null ||
        _editSelection!.start < 0 ||
        _editSelection!.end < 0) {
      _editSelection = TextSelection.collapsed(
        offset: _editController.text.length,
      );
    }
    return _editSelection!;
  }

  void _linkjoyElevenMarsha() {
    if (_method == ChatInputMethod.text) _editFocus.requestFocus();
    String text = _editController.text.trim();
    if (text.isEmpty) return;
    text = LinkjoyAncestorMarcoSister.instance.checkEmojiText(text);
    widget.observer.onSendText(text);
    _editController.text = '';
    _editText = _editController.text;
    _editSelection = null;
    _linkjoyLapMarshaChlorine();
  }

  @override
  void onEmojiInput(String emoji) {
    final selection = _linkjoyWeaponizeFigureThough();
    final left = _editController.text.substring(0, selection.start);
    final right = _editController.text.substring(selection.start);
    _editController.text = left + emoji + right;
    _editController.selection = TextSelection(
      baseOffset: selection.start + emoji.length,
      extentOffset: selection.end + emoji.length,
      affinity: selection.affinity,
      isDirectional: selection.isDirectional,
    );
    _editText = _editController.text;
    _editSelection = _editController.selection;
    _linkjoyLapMarshaChlorine();
  }

  @override
  void onEmojiSticker(LinkjoyFondnessFasten sticker) {
    widget.observer.onSendSticker(sticker);
  }

  @override
  void onEmojiPage(int index) {
    _emojiPage = index;
  }

  @override
  void onEmojiSend() {
    _linkjoyElevenMarsha();
  }

  @override
  bool onEmojiSendEnabled() {
    return _editController.text.isNotEmpty;
  }

  void updateInputHint(String inputHint) {
    if (mounted) {
      setState(() {
        hintText = inputHint;
      });
    }
  }
}

enum ChatInputMethod { none, text, voice, photo, gift, function, more }

enum ChatInputPlatForm { message }

abstract mixin class ChatInputToolBarObserver {
  void onSendText(String text);

  void onSelectInputFunc(ChatInputFuncType type);

  void onSendGift();

  void onSendSticker(LinkjoyFondnessFasten sticker);

  void onSendImage(String path, {LinkjoyFondnessFasten? image});

  void onSendVideo(String path, {LinkjoyFondnessDegrasse? video});

  void onSendVoice(String path);

  void onActiveInputMethod(ChatInputMethod method);

  void onTextChanged(String text);
}

class ChatInputFuncItem {
  final ChatInputFuncType type;
  final String name;
  final String icon;

  ChatInputFuncItem(this.type, this.name, this.icon);
}

enum ChatInputFuncType { voice, video, card, location, more }

class LinkjoyMarshaBugMario extends TextEditingController {
  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    if (!value.composing.isValid || !withComposing) {
      return TextSpan(style: style, text: text);
    }
    final TextStyle? composingStyle = style?.merge(
      const TextStyle(backgroundColor: Color(0xFFF1F1F1)),
    );
    return TextSpan(
      style: style,
      children: <TextSpan>[
        TextSpan(text: value.composing.textBefore(value.text)),
        TextSpan(
          style: composingStyle,
          text: value.composing.textInside(value.text),
        ),
        TextSpan(text: value.composing.textAfter(value.text)),
      ],
    );
  }
}
