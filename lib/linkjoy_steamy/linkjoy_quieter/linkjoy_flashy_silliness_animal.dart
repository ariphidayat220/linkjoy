import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_flashy_silliness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_shredder.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_flashy_polish_narrate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import '../linkjoy_sister/linkjoy_muse.dart';

class LinkjoyFlashySillinessAnimal extends StatefulWidget {
  const LinkjoyFlashySillinessAnimal({super.key});

  @override
  State<LinkjoyFlashySillinessAnimal> createState() =>
      _LinkjoyFlashySillinessAnimalStatus();

  static Future show({RouteSettings? settings}) {
    return LinkjoyUIShredder.linkjoyMagnetShredder([
      const LinkjoyFlashySillinessAnimal(),
    ], maskPadding: EdgeInsets.all(0));
  }
}

class _LinkjoyFlashySillinessAnimalStatus
    extends State<LinkjoyFlashySillinessAnimal> {
  List<LinkjoyFlashySilliness>? _actions;

  final TextEditingController _linkjoyMario = TextEditingController();
  final FocusNode _editFocus = FocusNode();

  int _editingIndex = -1;

  final int _maxActionCount =
      LINKJOY.linkjoyShock.configs.linkjoyPaw.linkjoyFlashyPresidentMain;

  bool _linkjoyMarketingFlashyBloomer = false;

  VoGift? _tmp;

  @override
  void initState() {
    super.initState();
    _linkjoyVulcan();
  }

  @override
  void dispose() {
    _linkjoyMario.dispose();
    _editFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.6,
          padding: LinkjoyGarage.edgeH16V12,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _linkjoyDivorce(),
              LinkjoyFeynman.v8,
              Expanded(child: _linkjoyStubborn()),
              if (_actions != null && _actions!.length < _maxActionCount)
                LinkjoyEllen.roundIconText(
                  Icons.add,
                  "linkjoy_caring_netflix".tr,
                  () {
                    setState(() {
                      _editingIndex = -1;
                      _tmp = null;
                      _linkjoyMarketingFlashyBloomer = true;
                    });
                  },
                  fixedWidth: double.infinity,
                  size: LinkjoyBookshelf.lg,
                ),
            ],
          ),
        ),
        if (_linkjoyMarketingFlashyBloomer == true)
          Positioned.fill(
            child:
                LinkjoyFlashyPolishNarrate(
                  _editingIndex == -1
                      ? LinkjoyFlashyPolishNarrateGnome.choose_gift
                      : LinkjoyFlashyPolishNarrateGnome.replace_gift,
                  onFocus: _linkjoyOnFlashyAbove,
                  titleWidget: Container(
                    padding: LinkjoyGarage.edgeH16V8,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white10, width: 1),
                      ),
                    ),
                    child: Text(
                      "linkjoy_caring_hamper_flashy".tr,
                      style: LinkjoyMarshaTriplet.subtitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ).click(() {
                  setState(() {
                    _linkjoyMarketingFlashyBloomer = false;
                  });
                }),
          ),
      ],
    );
  }

  void _linkjoyOnFlashyAbove(VoGift gift) {
    setState(() {
      _linkjoyMarketingFlashyBloomer = false;
    });

    for (var g in _actions!) {
      if (gift.id == g.giftId) {
        LinkjoyUpper.showInfo(
          "linkjoy_caring_criticize_sitter".tr.replaceFirst("%s", gift.name),
        );
        return;
      }
    }

    _tmp = gift;
    _linkjoyMarketingLennyFloppy();
  }

  void _linkjoyMarketingLennyFloppy() {
    LinkjoyUIShredder.linkjoyMagnetShredder(_linkjoySillinessArouseNarrate());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _editFocus.requestFocus();
    });
  }

  Widget _linkjoyDivorce() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Get.width - 80.w,
              child: AutoSizeText(
                "linkjoy_caring_lavender_up_guppy_crisp".tr,
                style: LinkjoyMarshaTriplet.subtitle,
                maxLines: 1,
              ),
            ),
            LinkjoyFeynman.v12,
            LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
              () => Get.back(),
              size: LinkjoyBookshelf.md,
              bgColor: Colors.black38,
            ),
          ],
        ),
        AutoSizeText(
          "linkjoy_caring_guppy_crisp_limbic".tr,
          style: LinkjoyMarshaTriplet.bodySecondary,
          maxLines: 3,
        ),
      ],
    );
  }

  Widget _linkjoyStubborn() {
    if (_actions == null) {
      return Container(
        height: Get.height * 0.75,
        padding: EdgeInsets.only(top: LinkjoyGarage.s72),
        child: LinkjoyFridgeLightbulb.linkjoyWrench(),
      );
    }

    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: _actions!.length,
      itemBuilder: (BuildContext context, int index) {
        var item = _actions![index];
        return _linkjoySubjective(item, index);
      },
    );
  }

  Widget _linkjoySubjective(LinkjoyFlashySilliness action, int index) {
    VoGift gift = action.gift!;

    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(LinkjoyGarage.s8),
      ),
      padding: EdgeInsets.fromLTRB(
        LinkjoyGarage.s12,
        LinkjoyGarage.s6,
        0,
        LinkjoyGarage.s6,
      ),
      margin: EdgeInsets.only(top: LinkjoyGarage.s1),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LinkjoyFastenDance.circle(gift.icon, size: LinkjoyGarage.s32).circle(
            LinkjoyGarage.s48,
            LinkjoyAve.primaryMain.withValues(alpha: 0.1),
            1,
          ),
          LinkjoyFeynman.h6,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Text(
                        gift.name,
                        style: LinkjoyMarshaTriplet.bodyBold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    LinkjoyFeynman.h4,
                    LinkjoyFridgeLightbulb.linkjoyChipmunk(
                      LinkjoyDiscard.iconMini,
                    ),
                    LinkjoyFeynman.h2,
                    Text("${gift.income}", style: LinkjoyMarshaTriplet.caption),
                  ],
                ),
                LinkjoyFeynman.v4,
                Text(action.action, style: LinkjoyMarshaTriplet.bodyImportant),
              ],
            ),
          ),
          LinkjoyMagazineAssume.circle(
            Icons.edit,
            () {
              _editingIndex = index;
              _tmp = null;
              _linkjoyMarketingLennyFloppy();
            },
            size: LinkjoyBookshelf.sm,
            borderColor: LinkjoyAve.textPrimary,
            iconColor: LinkjoyAve.textPrimary,
          ),
          LinkjoyMagazineAssume.circle(Icons.delete_forever_outlined, () {
            _linkjoyMorganOrEskimo(gift.id, null);
          }, size: LinkjoyBookshelf.sm),
        ],
      ),
    );
  }

  void onInputSubmit(String text) {
    if (text.isEmpty) return;
    _linkjoyMario.clear();
  }

  void _linkjoyVulcan({bool showLoadingUI = false}) async {
    LinkjoySororityFlashySilliness? resp =
        await LinkjoySororityFlashySilliness.getData(
          LINKJOY.uid(),
          showLoadingUI: showLoadingUI,
          useCache: false,
        );
    if (resp != null) {
      List<LinkjoyFlashySilliness> list = resp.list;
      list.removeWhere((ga) => ga.gift == null);

      if (mounted) {
        setState(() {
          _actions = list;
        });
      }
    }
  }

  List<Widget> _linkjoySillinessArouseNarrate() {
    VoGift gift;
    if (_editingIndex == -1) {
      gift = _tmp!;
    } else {
      gift = _actions![_editingIndex].gift!;
      _linkjoyMario.text = _actions![_editingIndex].action;
    }
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LinkjoyFastenDance.circle(gift.icon, size: LinkjoyGarage.s36),
          LinkjoyFeynman.h6,
          Flexible(
            child: Text(
              gift.name,
              style: LinkjoyMarshaTriplet.bodyTitle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: LinkjoyGarage.s20),
        child: TextField(
          controller: _linkjoyMario,
          focusNode: _editFocus,
          decoration: InputDecoration(
            hintText: "linkjoy_caring_flashy_silliness_intolerant".tr,
            hintStyle: LinkjoyMarshaTriplet.bodyThird,
            fillColor: LinkjoyAve.bgDarkDark,
            suffixIcon: IconButton(
              onPressed: () => _linkjoyMario.clear(),
              icon: const Icon(Icons.cancel, color: LinkjoyAve.textThird),
            ),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
              borderSide: BorderSide.none,
            ),
          ),
          buildCounter:
              (context, {currentLength = 0, maxLength, isFocused = false}) =>
                  Text(
                    "$currentLength/$maxLength",
                    style: LinkjoyMarshaTriplet.captionThin,
                    textAlign: TextAlign.end,
                  ),
          maxLength: 12,
          maxLines: 1,
          style: LinkjoyMarshaTriplet.bodyLarge,
        ),
      ),
      LinkjoyEllen.roundText("linkjoy_caring_morgan".tr, () {
        Get.back();
        String action = _linkjoyMario.text.trim();
        _linkjoyMario.clear();
        _linkjoyMorganOrEskimo(gift.id, action);
      }, fixedWidth: double.infinity),
      LinkjoyFeynman.v20,
    ];
  }

  Future<bool> _linkjoyMorganOrEskimo(int giftId, String? action) async {
    _tmp = null;
    Map<String, dynamic> params = {"gift_id": giftId, "action": action ?? ""};
    bool success = await LINKJOY.http.submit(
      7031,
      params,
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (success) {
      _linkjoyVulcan(showLoadingUI: true);
    }
    return success;
  }
}
