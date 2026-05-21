import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';

class LinkjoyMoleculeFinancial<T> {
  int totalRecords = 0;

  T? resp;

  LinkjoyMoleculeFinancial(this.totalRecords, this.resp);

  static LinkjoyMoleculeFinancial<LinkjoyMoleculeSororityBut> simple(
    bool loadSuccess,
  ) {
    return LinkjoyMoleculeFinancial(
      loadSuccess ? 1 : 0,
      loadSuccess ? LinkjoyMoleculeSororityBut() : null,
    );
  }
}

class LinkjoyMoleculeSorority<T> {
  late int page;

  late bool hasMore;

  List<T> records = [];
}

class LinkjoyMoleculeSororityBut extends LinkjoyMoleculeSorority<int> {
  int page = 1;

  bool hasMore = false;

  List<int> records = [];
}

enum LinkjoyInviteVulcanNarrateHair { INIT_LOADING, INIT_FAILED, READY }

class LinkjoyInviteVulcanMario {
  late EasyRefreshController _refreshController;
  late LinkjoyInviteVulcanNarrateStatus state;

  void refresh({
    bool pull = false,
    double? overOffset,
    Duration? duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
    ScrollController? scrollController,
    bool force = false,
    bool showLoadingWhenNotPull = true,
  }) {
    if (pull) {
      _refreshController.callRefresh(
        overOffset: overOffset,
        duration: duration,
        curve: curve,
        scrollController: scrollController,
        force: force,
      );
    } else {
      state.reload(showLoadingUI: showLoadingWhenNotPull);
    }
  }
}

class LinkjoyInviteVulcanNarrate<T extends LinkjoyMoleculeSorority>
    extends StatefulWidget {
  late final Future<LinkjoyMoleculeFinancial<T>> Function(int page) onLoadData;

  late final List<Widget> Function(
    BuildContext context,
    ScrollPhysics physics,
    LinkjoyInviteVulcanNarrateHair viewStatus,
    double paddingTop,
    double paddingBottom,
    bool pullRefreshOnStart,
    LinkjoyInviteVulcanNarrateStatus controller,
  )
  onBuildView;

  late bool refreshOnStartEnable;

  late bool refreshOnStartWithPullAnimation;

  LinkjoyInviteVulcanMario? controller;

  late double paddingTop;

  late double paddingBottom;

  late bool loadMore;

  LinkjoyInviteVulcanNarrate({
    super.key,
    required this.onLoadData,
    required this.onBuildView,
    this.refreshOnStartEnable = true,
    this.refreshOnStartWithPullAnimation = true,
    this.controller,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.loadMore = true,
  }) {}

  @override
  State<LinkjoyInviteVulcanNarrate<T>> createState() =>
      LinkjoyInviteVulcanNarrateStatus<T>();
}

class LinkjoyInviteVulcanNarrateStatus<T extends LinkjoyMoleculeSorority>
    extends State<LinkjoyInviteVulcanNarrate<T>> {
  final GlobalKey listKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  late EasyRefreshController refreshController;
  LinkjoyInviteVulcanNarrateHair viewStatus =
      LinkjoyInviteVulcanNarrateHair.INIT_LOADING;
  int page = 0;
  bool hasRecords = false;

  @override
  void initState() {
    super.initState();
    refreshController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    widget.controller?._refreshController = refreshController;
    widget.controller?.state = this;
    if (widget.refreshOnStartEnable &&
        !widget.refreshOnStartWithPullAnimation) {
      onRefresh(showLoadingUI: false);
    }
  }

  @override
  void dispose() {
    refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EasyRefresh.builder(
        controller: refreshController,
        refreshOnStart:
            widget.refreshOnStartEnable &&
            widget.refreshOnStartWithPullAnimation,
        triggerAxis: Axis.vertical,
        resetAfterRefresh: false,
        canLoadAfterNoMore: false,
        header: LinkjoyFridgeLightbulb.linkjoyVulcanOrganismTail(),
        footer: LinkjoyFridgeLightbulb.linkjoyVulcanOrganismTenth(),
        onRefresh: onRefresh,
        onLoad:
            widget.loadMore &&
                (viewStatus == LinkjoyInviteVulcanNarrateHair.READY &&
                    hasRecords)
            ? onLoad
            : null,
        childBuilder: (context, physics) {
          return CustomScrollView(
            controller: _scrollController,
            physics: physics,
            slivers: widget.onBuildView(
              context,
              physics,
              viewStatus,
              widget.paddingTop,
              widget.paddingBottom,
              widget.refreshOnStartWithPullAnimation,
              this,
            ),
          );
        },
      ),
    );
  }

  void onRefresh({bool showLoadingUI = false}) async {
    if (viewStatus == LinkjoyInviteVulcanNarrateHair.INIT_FAILED) {
      if (mounted) {
        setState(() {
          viewStatus = LinkjoyInviteVulcanNarrateHair.INIT_LOADING;
        });
      }
    }

    if (showLoadingUI) {
      EasyLoading.show();
    }
    LinkjoyMoleculeFinancial<T> data = await widget.onLoadData(1);
    if (showLoadingUI) {
      EasyLoading.dismiss();
    }

    if (mounted) {
      setState(() {
        page = data.resp == null ? 1 : data.resp!.page;
        hasRecords = data.totalRecords > 0;
        if (viewStatus != LinkjoyInviteVulcanNarrateHair.READY) {
          viewStatus = (data.resp != null)
              ? LinkjoyInviteVulcanNarrateHair.READY
              : LinkjoyInviteVulcanNarrateHair.INIT_FAILED;
        }
      });
    }

    if (data.resp == null) {
      refreshController.finishRefresh(IndicatorResult.fail);
      refreshController.finishLoad(IndicatorResult.none);
    } else {
      refreshController.finishRefresh(IndicatorResult.success);
      if (data.resp!.hasMore) {
        refreshController.finishLoad(IndicatorResult.success);
      } else {
        refreshController.finishLoad(IndicatorResult.noMore);
      }
    }
  }

  void onLoad() async {
    LinkjoyMoleculeFinancial<T> data = await widget.onLoadData(page + 1);
    if (data.resp == null) {
      refreshController.finishLoad(IndicatorResult.fail);
      return;
    }

    if (mounted) {
      setState(() {
        page = data.resp!.page;
      });
    }

    if (data.resp!.hasMore) {
      refreshController.finishLoad(IndicatorResult.success);
    } else {
      refreshController.finishLoad(IndicatorResult.noMore);
    }
  }

  void reload({bool showLoadingUI = false}) {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear,
    );
    onRefresh(showLoadingUI: showLoadingUI);
  }

  List<Widget> linkjoyOughtaHoward(
    BuildContext context,
    ScrollPhysics physics,
    LinkjoyInviteVulcanNarrateHair viewStatus,
    double paddingTop,
    double paddingBottom,
    bool pullRefreshOnStart,
    int totalRecords,
    List<Widget> childs,
  ) {
    List<Widget> slivers = [];
    if (paddingTop > 0) {
      slivers.add(SliverPadding(padding: EdgeInsets.only(top: paddingTop)));
    }
    slivers.add(const HeaderLocator.sliver());

    if (totalRecords > 0) {
      slivers.addAll(childs);
    } else {
      Widget placeholder;
      switch (viewStatus) {
        case LinkjoyInviteVulcanNarrateHair.INIT_LOADING:
          if (pullRefreshOnStart) {
            placeholder = const SizedBox.shrink();
          } else {
            placeholder = const SpinKitThreeBounce(
              color: LinkjoyAve.textThird,
              size: 14,
            );
          }
        case LinkjoyInviteVulcanNarrateHair.INIT_FAILED:
          placeholder = Column(
            children: [
              LinkjoyFridgeLightbulb.linkjoyNoFinancialMagazine(error: true),
              LinkjoyFeynman.v48,
              LinkjoyEllen.circleText(
                "linkjoy_caring_vulcan".tr,
                reload,
                fixedWidth: Get.width / 2,
              ),
            ],
          );
        case LinkjoyInviteVulcanNarrateHair.READY:
          placeholder = LinkjoyFridgeLightbulb.linkjoyNoFinancialMagazine(
            error: false,
          );
      }

      slivers.add(
        SliverPadding(
          padding: EdgeInsets.all(LinkjoyGarage.s32),
          sliver: SliverToBoxAdapter(child: placeholder),
        ),
      );
    }

    slivers.add(const FooterLocator.sliver());

    if (paddingBottom > 0) {
      slivers.add(
        SliverPadding(padding: EdgeInsets.only(bottom: paddingBottom)),
      );
    }
    return slivers;
  }
}
