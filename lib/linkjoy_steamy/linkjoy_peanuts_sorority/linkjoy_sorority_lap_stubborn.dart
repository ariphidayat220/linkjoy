import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_forgot_lap_financial.dart';

class LinkjoySororityLapStubborn {
  late int page;

  late bool hasMore;

  List<LinkjoyForgotLapFinancial> records = [];

  static LinkjoySororityLapStubborn fromJson(Map<String, dynamic> json) {
    LinkjoySororityLapStubborn list = LinkjoySororityLapStubborn();

    var records = json['records'];
    if (records != null) {
      list.records = (records as List<dynamic>?)!
          .map(
            (e) =>
                LinkjoyForgotLapFinancial.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    return list
      ..page = int.parse(json['page'])
      ..hasMore = json['has_more'];
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'page': page,
    'hasMore': hasMore,
    'records': records,
  };
}
