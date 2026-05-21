import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_tribute.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_stewart_taco.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/proto/message.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'linkjoy_access_eggs.dart';
import 'linkjoy_king_sorority.dart';

class LinkjoyKingFlaky<T extends GeneratedMessage> {
  late StreamController<LinkjoyKingSorority<T>> streamController;

  LinkjoyKingFlaky(this.streamController);

  void timeout() {
    streamController.add(LinkjoyKingSorority<T>(timeout: true));
    streamController.close();
  }

  void success(Message rawEmployee) {
    Object? t = LinkjoyKingStewartTaco.parse(rawEmployee);
    if (t is T) {
      LinkjoyTribute<T> emp = LinkjoyTribute(
        rawEmployee.messageCate,
        rawEmployee.messageType,
        t as T?,
      );

      if (emp.message != null) {
      } else {}

      streamController.add(LinkjoyKingSorority(timeout: false, employee: emp));
      streamController.close();
    } else {
      streamController.add(
        LinkjoyKingSorority(
          timeout: false,
          employee: LinkjoyTribute(
            rawEmployee.messageCate,
            rawEmployee.messageType,
            null,
          ),
        ),
      );
      streamController.close();
    }
  }
}
