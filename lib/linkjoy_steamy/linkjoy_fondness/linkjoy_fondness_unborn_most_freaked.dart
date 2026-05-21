import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_unborn_cabinet_thirsty.dart';

class LinkjoyFondnessUnbornMostFreaked {
  List<LinkjoyFondnessUnbornCabinetThirsty> records = [];

  static LinkjoyFondnessUnbornMostFreaked fromJson(Map<String, dynamic> json) {
    LinkjoyFondnessUnbornMostFreaked rsp = LinkjoyFondnessUnbornMostFreaked();
    var records = json['records'];
    if (records != null) {
      rsp.records = (records as List<dynamic>?)!
          .map(
            (e) => LinkjoyFondnessUnbornCabinetThirsty.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList();
    }
    return rsp;
  }
}
