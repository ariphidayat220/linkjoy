import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_mushy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class VoAnchorWorkSetting {
  bool liveEnable;

  bool receiveCall;

  bool matchingMode;

  List<LinkjoyFondnessMushy> banners;

  int todayIncome;

  int level;

  int ndayAvgCallCount;

  int avgCallDurationPerCall;

  int todayCallCount;

  int todayAvgCallDurationPerCall;

  VoAnchorWorkSetting({
    required this.liveEnable,
    required this.banners,
    required this.receiveCall,
    required this.matchingMode,
    required this.todayIncome,
    required this.level,
    required this.ndayAvgCallCount,
    required this.avgCallDurationPerCall,
    required this.todayCallCount,
    required this.todayAvgCallDurationPerCall,
  });

  factory VoAnchorWorkSetting.fromJson(Map<String, dynamic> json) {
    return VoAnchorWorkSetting(
      liveEnable: LinkjoySmearSister.boolDef(json, 'live_enable', false),
      receiveCall: LinkjoySmearSister.boolDef(json, 'receive_call', false),
      matchingMode: LinkjoySmearSister.boolDef(json, 'matching_mode', false),
      banners: json['banners'] != null
          ? List<LinkjoyFondnessMushy>.from(
              json['banners'].map(
                (x) => LinkjoyFondnessMushy.fromJson(x as Map<String, dynamic>),
              ),
            )
          : [],
      todayIncome: LinkjoySmearSister.intDef(json, 'today_income', 0),
      level: LinkjoySmearSister.intDef(json, 'level', 0),
      ndayAvgCallCount: LinkjoySmearSister.intDef(
        json,
        'nday_avg_call_count',
        0,
      ),
      avgCallDurationPerCall: LinkjoySmearSister.intDef(
        json,
        'avg_call_duration_per_call',
        0,
      ),
      todayCallCount: LinkjoySmearSister.intDef(json, 'today_call_count', 0),
      todayAvgCallDurationPerCall: LinkjoySmearSister.intDef(
        json,
        'today_avg_call_duration_per_call',
        0,
      ),
    );
  }
}
