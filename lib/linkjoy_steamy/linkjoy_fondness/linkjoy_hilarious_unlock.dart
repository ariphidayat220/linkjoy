import 'linkjoy_fondness_hilarious.dart';

class LinkjoyHilariousUnlock {
  LinkjoyHilariousUnlock._privateConstructor();

  static final LinkjoyHilariousUnlock _instance =
      LinkjoyHilariousUnlock._privateConstructor();

  static LinkjoyHilariousUnlock get instance => _instance;

  final Map<int, LinkjoyFondnessHilarious> _countryMap = {};

  Map<int, LinkjoyFondnessHilarious> get countryMap => _countryMap;

  void addCountry(int countryId, LinkjoyFondnessHilarious country) {
    _countryMap[countryId] = country;
  }

  void _addAllCountries(Map<int, LinkjoyFondnessHilarious> countries) {
    _countryMap.addAll(countries);
  }

  void refreshAllCountries(Map<int, LinkjoyFondnessHilarious> countries) {
    _countryMap.clear();
    _addAllCountries(countries);
  }

  LinkjoyFondnessHilarious? getCountry(int id) {
    return _countryMap[id];
  }

  void clear() {
    _countryMap.clear();
  }
}
