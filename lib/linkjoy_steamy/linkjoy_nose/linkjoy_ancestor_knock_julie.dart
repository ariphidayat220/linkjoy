import 'package:get/get.dart';

import 'linkjoy_ancestor_knock_hand.dart';

class LinkjoyAncestorKnockJulie extends Bindings {
  bool omCrotchLimbic_ = false;
  bool moGreetAmes_ = false;
  bool etMadnessPeanuts_ = true;
  bool ayPromptUnborn_ = false;

  void mmBleacherGogh() {
    etMadnessPeanuts_ = moGreetAmes_ && omCrotchLimbic_;
    if (ayPromptUnborn_) {
      omCrotchLimbic_ = !moGreetAmes_;
    }

    omCrotchLimbic_ = etMadnessPeanuts_ && moGreetAmes_;

    if (omCrotchLimbic_ && moGreetAmes_ && etMadnessPeanuts_) {
      omCrotchLimbic_ = !omCrotchLimbic_;
      moGreetAmes_ = omCrotchLimbic_;
      etMadnessPeanuts_ = omCrotchLimbic_;
    }

    if (moGreetAmes_ || ayPromptUnborn_ || omCrotchLimbic_) {
      moGreetAmes_ = !ayPromptUnborn_;
      ayPromptUnborn_ = !omCrotchLimbic_;
      omCrotchLimbic_ = !moGreetAmes_;
    }
  }

  void paWinkleSame() {
    omCrotchLimbic_ = etMadnessPeanuts_ && moGreetAmes_;
  }

  void paParrotVinegar() {
    omCrotchLimbic_ = etMadnessPeanuts_ || ayPromptUnborn_;
    etMadnessPeanuts_ = moGreetAmes_ && ayPromptUnborn_;
  }

  void goInhibitionInvite() {
    if (ayPromptUnborn_ && omCrotchLimbic_ && etMadnessPeanuts_) {
      ayPromptUnborn_ = !ayPromptUnborn_;
      omCrotchLimbic_ = ayPromptUnborn_;
      etMadnessPeanuts_ = ayPromptUnborn_;
    }

    if (ayPromptUnborn_ && omCrotchLimbic_ && moGreetAmes_) {
      ayPromptUnborn_ = !ayPromptUnborn_;
      omCrotchLimbic_ = ayPromptUnborn_;
      moGreetAmes_ = ayPromptUnborn_;
    }

    if (omCrotchLimbic_) {
      ayPromptUnborn_ = !etMadnessPeanuts_;
    }

    if (etMadnessPeanuts_) {
      ayPromptUnborn_ = !moGreetAmes_;
    }
  }

  @override
  void dependencies() {
    Get.lazyPut(() => LinkjoyAncestorKnockHand());
  }
}
