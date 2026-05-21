library;

enum LinkjoyFatConvictSillinessGnome {
  UNKNOW,
  SHOWTOAST,
  SHOWRECHARGEALEART,
  STARTCALL,
}

enum LinkjoyFatConvictUpperGnome {
  UNKNOW,
  OTHERNOTDISTURB,
  OTHERNBUSY,
  OTHEROFFLINE,
}

class LinkjoyFatConvict {
  LinkjoyFatConvict();

  int code = -404;
  String msg = "";
  int balance = -404;
  int hasExpCard = -404;
  int chatPrice = -404;
  int firstPay = -404;
  int noDisturb = -404;
  int onlineStatus = -404;
  int actionType = -404;
  int toastType = -404;
}
