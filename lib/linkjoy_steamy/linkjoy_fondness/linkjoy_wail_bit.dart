import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyWailBit {
  String? order_id;
  String? app_store_prod_id;
  String? google_prod_id;
  String? check_page_url;

  int? jump_type;

  static LinkjoyWailBit fromJson(Map<String, dynamic> json) {
    return LinkjoyWailBit()
      ..order_id = json['order_id']
      ..app_store_prod_id = json['app_store_prod_id']
      ..google_prod_id = json['google_prod_id']
      ..check_page_url = json['check_page_url']
      ..jump_type = LinkjoySmearSister.intDef(json, 'jump_type', 0);
  }

  Map<String, dynamic> toJson() {
    return {
      "order_id": order_id,
      "app_store_prod_id": app_store_prod_id,
      "google_prod_id": google_prod_id,
      "check_page_url": check_page_url,
      "jump_type": jump_type,
    };
  }
}
