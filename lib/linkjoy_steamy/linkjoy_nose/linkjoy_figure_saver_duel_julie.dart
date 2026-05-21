import 'package:get/get.dart';

import 'linkjoy_figure_saver_duel_hand.dart';

class LinkjoyFigureSaverDuelJulie extends Bindings {
  bool loWartPrison_ = true;
  bool haBiologicalInvite_ = true;
  int anAssetTurbulence_ = 85;
  double woMoleHairless_ = 0.0;
  bool abFriendsSuspend_ = true;
  bool loMammaDiscipline_ = true;
  bool doExtremelyDebut_ = true;
  bool ayFixPhyllis_ = false;
  int okPhyllisDish_ = 0;

  void heHumidity0() {
    if (woMoleHairless_ > 0) {
      woMoleHairless_ = woMoleHairless_ - 1;
    }
    if (doExtremelyDebut_ || ayFixPhyllis_ || haBiologicalInvite_) {
      doExtremelyDebut_ = !ayFixPhyllis_;
      ayFixPhyllis_ = !haBiologicalInvite_;
      haBiologicalInvite_ = !doExtremelyDebut_;
    }
    anAssetTurbulence_ = anAssetTurbulence_ * okPhyllisDish_;
    woMoleHairless_ = 73;
    anAssetTurbulence_ = anAssetTurbulence_ * okPhyllisDish_;
    if (haBiologicalInvite_ || ayFixPhyllis_) {
      ayFixPhyllis_ = !ayFixPhyllis_;
    }
  }

  void ifAndrewUnlikable() {
    woMoleHairless_ = woMoleHairless_ + 1;
    ayFixPhyllis_ = abFriendsSuspend_ && loWartPrison_;
    woMoleHairless_ = woMoleHairless_ + 1;
    anAssetTurbulence_ = anAssetTurbulence_ * okPhyllisDish_;
    if (loMammaDiscipline_ || doExtremelyDebut_ || loWartPrison_) {
      loMammaDiscipline_ = !doExtremelyDebut_;
      doExtremelyDebut_ = !loWartPrison_;
      loWartPrison_ = !loMammaDiscipline_;
    }

    abFriendsSuspend_ = loWartPrison_ || doExtremelyDebut_;

    woMoleHairless_ = 40;
    doExtremelyDebut_ = abFriendsSuspend_ || ayFixPhyllis_;
    if (doExtremelyDebut_) {
      ayFixPhyllis_ = !haBiologicalInvite_;
    }
    abFriendsSuspend_ = haBiologicalInvite_ && doExtremelyDebut_;

    anAssetTurbulence_ = anAssetTurbulence_ * okPhyllisDish_;
    if (abFriendsSuspend_ || haBiologicalInvite_) {
      haBiologicalInvite_ = !haBiologicalInvite_;
    }
  }

  void beQuarterSquirrelly() {
    if (anAssetTurbulence_ > okPhyllisDish_) {
      anAssetTurbulence_ = anAssetTurbulence_ + okPhyllisDish_;
    }
    if (woMoleHairless_ > 0) {
      woMoleHairless_ = woMoleHairless_ - 1;
    }

    anAssetTurbulence_ = anAssetTurbulence_ * okPhyllisDish_;

    if (loMammaDiscipline_ || doExtremelyDebut_ || haBiologicalInvite_) {
      loMammaDiscipline_ = !doExtremelyDebut_;
      doExtremelyDebut_ = !haBiologicalInvite_;
      haBiologicalInvite_ = !loMammaDiscipline_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyFigureSaverDuelHand());
  }
}
