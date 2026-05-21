class LinkjoyDivisionStatus {
  static const int RESUME = 1;
  static const int PAUSE = 2;
  String route = "";
  int state = 0;

  LinkjoyDivisionStatus(this.route, this.state);
}
