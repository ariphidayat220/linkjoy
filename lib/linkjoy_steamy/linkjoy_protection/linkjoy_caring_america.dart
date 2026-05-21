import 'dart:ui' as ui;

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ogle_financial.dart';
import 'package:get/get.dart';

class LinkjoyCaringAmerica extends Translations {
  static final LinkjoyCaringAmerica _instance = LinkjoyCaringAmerica._();

  factory LinkjoyCaringAmerica() {
    return _instance;
  }

  LinkjoyCaringAmerica._();

  @override
  Map<String, Map<String, String>> get keys => {
    "en": {
      "linkjoy_caring_deli_dance_meadow_upper":
          "Operation failed, please check the network settings",
    },
    "ar": {
      "linkjoy_caring_deli_dance_meadow_upper":
          "فشلت العملية، يرجى التحقق من إعدادات الشبكة أو إعادة المحاولة",
    },
    "es": {
      "linkjoy_caring_deli_dance_meadow_upper":
          "Operación fallida, por favor verifique la configuración de red o vuelva a intentarlo",
    },
    "hi": {
      "linkjoy_caring_deli_dance_meadow_upper":
          "ऑपरेशन विफल, कृपया नेटवर्क सेटिंग की जाँच करें या पुनः प्रयास करें",
    },
    "in": {
      "linkjoy_caring_deli_dance_meadow_upper":
          "operasi gagal, silakan periksa pengaturan jaringan atau coba lagi",
    },
    "pt": {
      "linkjoy_caring_deli_dance_meadow_upper":
          "Falha na operação, verifique as configurações de rede ou tente novamente",
    },
    "vi": {
      "linkjoy_caring_deli_dance_meadow_upper":
          "hoạt động không thành công, vui lòng kiểm tra cài đặt mạng hoặc thử lại",
    },
    "ur": {
      "linkjoy_caring_deli_dance_meadow_upper":
          "آپریشن ناکام ہوگیا، براہ کرم نیٹ ورک کی ترتیبات چیک کریں یا دوبارہ کوشش کریں",
    },
  };

  int _version = 0;

  int version() {
    return _version;
  }

  void updateWithUpgradeResponse(LinkjoyOgleFinancial? data) {
    if (data == null) {
      return;
    }

    _version = data.version;
    if (data.val != null) {
      Map<String, dynamic> cfg = data.val;
      for (var e in cfg.entries) {
        String lang = e.key;
        Map<String, dynamic> kvs = e.value;

        Map<String, String>? trans = Get.translations[lang];
        trans ??= {};
        trans.addAll(kvs.map((key, value) => MapEntry(key, value as String)));
        Get.translations[lang] = trans;
      }

      Map<String, String>? inVals = Get.translations["in"];
      if (inVals != null) {
        Get.translations["id"] = inVals;
      }
    }
  }

  static String localeLang() {
    return ui.PlatformDispatcher.instance.locale.languageCode.toLowerCase();
  }

  static String? localeCountry() {
    return ui.PlatformDispatcher.instance.locale.countryCode;
  }
}
