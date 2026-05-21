import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_datetime_picker_plus/src/datetime_picker_theme.dart'
    as picker_theme;
import 'package:get/get.dart';

typedef DateCallback = void Function(String date);

class LinkjoyInfectionFairness extends StatefulWidget {
  static show(
    BuildContext context, {
    String? date,
    required DateCallback confirmCallBack,
  }) {
    LocaleType localeType = LocaleType.en;
    String languageCode = LinkjoyIOSister.getLanguageCode() ?? "en";
    switch (languageCode) {
      case 'ar':
        localeType = LocaleType.ar;
        break;
      case 'es':
        localeType = LocaleType.es;
        break;
      case 'pt':
        localeType = LocaleType.pt;
        break;
      case 'id':
        localeType = LocaleType.id;
        break;
      case 'hi':
        localeType = LocaleType.hi;
        break;
      case 'vi':
        localeType = LocaleType.vi;
        break;
      default:
        break;
    }

    var initTime = DateTime(
      DateTime.now().year - 18,
      DateTime.now().month,
      DateTime.now().day,
    );
    if (!LinkjoyGnomeSister.isEmpty(date)) {
      initTime = DateTime.parse(date!);
    }

    DateTime nowTime = DateTime.now();
    DateTime dateMinus18Years = DateTime(
      nowTime.year - 18,
      nowTime.month,
      nowTime.day,
    );
    DatePicker.showDatePicker(
      Get.context!,
      theme: picker_theme.DatePickerTheme(
        cancelStyle: LinkjoyMarshaTriplet.bodyThird,
        doneStyle: LinkjoyMarshaTriplet.bodyImportant,
        itemStyle: LinkjoyMarshaTriplet.bodyLarge,
        backgroundColor: LinkjoyDivorced.linkjoyAnimalBgInsistence,
        itemHeight: LinkjoyDiscard.buttonHeightMd,
      ),
      locale: localeType,
      showTitleActions: true,
      currentTime: initTime,
      minTime: DateTime(1970, 01, 01),
      maxTime: dateMinus18Years,
      onChanged: (changedDate) {},
      onConfirm: (selectedDate) {
        confirmCallBack(
          LinkjoyDestineSister.formatDay(selectedDate.millisecondsSinceEpoch),
        );
      },
    );
  }

  final DateCallback confirmCallBack;
  final String? date;

  const LinkjoyInfectionFairness({
    super.key,
    this.date,
    required this.confirmCallBack,
  });

  @override
  State<LinkjoyInfectionFairness> createState() =>
      _LinkjoyInfectionFairnessStatus();
}

class _LinkjoyInfectionFairnessStatus extends State<LinkjoyInfectionFairness> {
  String localDate = "";

  @override
  Widget build(BuildContext context) {
    var initTime = DateTime(
      DateTime.now().year - 18,
      DateTime.now().month,
      DateTime.now().day,
    );
    if (LinkjoyGnomeSister.isEmpty(widget.date)) {
      localDate = LinkjoyDestineSister.formatDay(
        initTime.millisecondsSinceEpoch,
      );
    } else {
      localDate = widget.date!;
      initTime = DateTime.parse(localDate);
    }

    var mainWidget = Container(
      decoration: const BoxDecoration(
        borderRadius: LinkjoyDivorced.linkjoySillyShredderBroadwayFrontal,
        color: LinkjoyDivorced.linkjoyAnimalBgInsistence,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 20),
            child: _cupertinoDatePicker(CupertinoDatePickerMode.date, initTime),
          ),
          const SizedBox(height: 26),
          _confirmBtn(2),
          const SizedBox(height: 26),
        ],
      ),
    );
    return mainWidget;
  }

  Widget _cupertinoDatePicker(CupertinoDatePickerMode mode, DateTime initTime) {
    return CupertinoTheme(
      data: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          dateTimePickerTextStyle: TextStyle(
            color: LinkjoyCondensateSister.b1,
            fontSize: 18,
          ),
        ),
      ),
      child: CupertinoDatePicker(
        mode: mode,
        initialDateTime: initTime,
        minimumDate: DateTime(1970, 01, 01),
        maximumDate: DateTime.now(),
        minimumYear: 1970,
        maximumYear: DateTime.now().year - 18,
        use24hFormat: true,
        backgroundColor: LinkjoyCondensateSister.transparent,
        onDateTimeChanged: (dayTime) {
          localDate = LinkjoyDestineSister.formatDay(
            dayTime.millisecondsSinceEpoch,
          );
        },
      ),
    );
  }

  Widget _confirmBtn(int way) {
    return ElevatedButton(
      onPressed: () {
        widget.confirmCallBack(localDate);
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: LinkjoyCondensateSister.b1,
        minimumSize: const Size(180, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        "linkjoy_caring_morgan".tr,
        style: const TextStyle(
          color: LinkjoyCondensateSister.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
