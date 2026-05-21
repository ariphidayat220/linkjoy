import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_pearl.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_grad.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';

class LinkjoyPearlDivisionFinancial {
  List<LinkjoyFondnessGrad> regions = [];

  int page = 1;

  bool hasMore = false;

  List<LinkjoyUnborn> records = [];

  Map<int, CountryVO> countryMap = {};

  bool refreshing = false;
}
