import 'dart:async';
import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_conclusive_project.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_veto_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_veto_specific_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_coin_sister.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:qiniu_sdk_base/qiniu_sdk_base.dart';
import 'package:uuid/uuid.dart';

import 'linkjoy_gnome_sister.dart';

enum UploadType { image, video, voice, log }

enum UploadStatus { success, error, progress }

class UploadEvent {
  LinkjoyVetoSpecificFinancial? result;
  String? errorMsg;
  UploadStatus status;
  int progress;

  UploadEvent(this.status, {this.progress = 0, this.result});
}

class LinkjoyVetoOily {
  static final LinkjoyVetoOily _instance = LinkjoyVetoOily._();

  static LinkjoyVetoOily get instance => _instance;

  LinkjoyVetoOily._();

  final Storage storage = Storage();

  Stream<UploadEvent> upload(
    String filePath,
    UploadType type, {
    bool showLoadingUI = false,
  }) {
    StreamController<UploadEvent> controller = StreamController<UploadEvent>();
    var event = UploadEvent(UploadStatus.progress);
    controller.add(event);

    if (showLoadingUI) {
      EasyLoading.show();
    }
    _linkjoyProject(type).then((token) {
      if (LinkjoyGnomeSister.isEmpty(token)) {
        if (showLoadingUI) {
          EasyLoading.dismiss();
        }
        event.status = UploadStatus.error;
        event.errorMsg = "linkjoy_caring_veto_assemble".tr;
        controller.add(event);
        controller.close();
        return;
      }
      var putController = PutController();
      putController.addStatusListener((status) {});
      putController.addProgressListener((percent) {
        event.progress = (percent * 100).toInt();
        controller.add(event);
      });

      String uniqueKey = LinkjoyCoinSister.generateMd5(
        "linkjoy_headphone_${DateTime.now().millisecondsSinceEpoch}_${const Uuid().v4()}",
      );
      final putOptions = PutOptions(controller: putController, key: uniqueKey);
      storage
          .putFile(File(filePath), token!, options: putOptions)
          .then((response) {
            if (showLoadingUI) {
              EasyLoading.dismiss();
            }
            LinkjoyFondnessVetoSorority uploadJsonResp =
                LinkjoyFondnessVetoSorority.fromJson(response.rawData);
            if (uploadJsonResp.code == 0) {
              event.status = UploadStatus.success;
              event.result = uploadJsonResp.data;
              controller.add(event);
              controller.close();
            } else {
              event.status = UploadStatus.error;
              event.errorMsg = "${uploadJsonResp.code}->${uploadJsonResp.msg}";
              controller.add(event);
              controller.close();
            }
          })
          .catchError((e) {
            if (showLoadingUI) {
              EasyLoading.dismiss();
            }
            event.status = UploadStatus.error;
            event.errorMsg = e.toString();
            controller.add(event);
            controller.close();
          });
    });
    return controller.stream;
  }

  Future<String?> _linkjoyProject(UploadType type) async {
    String? token = _linkjoyProjectByGnome(type);
    if (!LinkjoyGnomeSister.isEmpty(token) &&
        LINKJOY.linkjoyElope.getLinkjoyVetoProjectStabPun() >
            DateTime.now().millisecondsSinceEpoch) {
      return token;
    } else {
      LinkjoyFondnessConclusiveProject? resp = await LINKJOY.http.rest(
        1016,
        {},
        (p0) => LinkjoyFondnessConclusiveProject.fromJson(p0),
        showLoadingUI: false,
        autoToastOnError: true,
      );
      if (resp != null) {
        LINKJOY.linkjoyElope.setLinkjoyVetoFastenProject(resp.imageToken!);
        LINKJOY.linkjoyElope.setLinkjoyVetoDegrasseProject(resp.videoToken!);
        LINKJOY.linkjoyElope.setLinkjoyVetoBlancProject(resp.voiceToken!);
        LINKJOY.linkjoyElope.setLinkjoyVetoCircusProject(resp.logToken!);
        LINKJOY.linkjoyElope.setLinkjoyVetoProjectStabPun(resp.expireTime!);
      }
      return _linkjoyProjectByGnome(type);
    }
  }

  String? _linkjoyProjectByGnome(UploadType type) {
    String? token;
    switch (type) {
      case UploadType.image:
        token = LINKJOY.linkjoyElope.getLinkjoyVetoFastenProject();
        break;
      case UploadType.video:
        token = LINKJOY.linkjoyElope.getLinkjoyVetoDegrasseProject();
        break;
      case UploadType.voice:
        token = LINKJOY.linkjoyElope.getLinkjoyVetoBlancProject();
        break;
      case UploadType.log:
        token = LINKJOY.linkjoyElope.getLinkjoyVetoCircusProject();
        break;
    }
    return token;
  }
}
