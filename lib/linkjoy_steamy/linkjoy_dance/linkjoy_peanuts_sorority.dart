import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';

class LinkjoyPeanutsSorority {
  bool httpSuccess = false;

  int httpCode = -1;

  int? code;

  String? msg;

  dynamic data;

  int decryptionTime = 0;

  LinkjoyPeanutsSorority(this.httpSuccess, this.httpCode);

  factory LinkjoyPeanutsSorority.parse(Map<String, dynamic> resp) {
    LinkjoyPeanutsSorority r = LinkjoyPeanutsSorority(true, 200);

    r.code = LinkjoySmearSister.intDef(resp, "code", -1);
    r.msg = LinkjoySmearSister.str(resp, "msg");
    r.data = resp['data'];

    return r;
  }

  Map<String, dynamic> toJson() {
    return {"code": code ?? 500, "msg": msg, "data": data};
  }

  get hasError {
    return !httpSuccess;
  }

  get isSuccess {
    return code == 0;
  }

  get isSessionInvalid {
    return code == 20 || code == 22;
  }

  get isBlockRedirect {
    return code == 30;
  }
}
