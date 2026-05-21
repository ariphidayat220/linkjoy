import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

class LinkjoyWailFat {
  int result = 0;

  bool? timeout;
  String? currency;
  double? totalPrice;
  int orderId = 0;

  static LinkjoyWailFat fromJson(Map<String, dynamic> json) {
    return LinkjoyWailFat()
      ..result = LinkjoyGnomeSister.dynamicToIntNotNull(json['result'])
      ..timeout = LinkjoyGnomeSister.dynamicToBoolNotNull(json['timeout'])
      ..currency = json['currency']
      ..totalPrice = LinkjoyGnomeSister.dynamicToDoubleNotNull(
        json['total_price'],
      )
      ..orderId = LinkjoyGnomeSister.dynamicToIntNotNull(json['order_id']);
  }

  Map<String, dynamic> toJson() {
    return {
      "result": result,
      "timeout": timeout,
      "currency": currency,
      "total_price": totalPrice,
      "order_id": orderId,
    };
  }
}
