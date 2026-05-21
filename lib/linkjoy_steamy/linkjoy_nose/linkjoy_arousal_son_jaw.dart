class LinkjoyArousalSonJaw {
  static const int SCENE_LOGIN = 0;

  static const int SCENE_FEMALE = 1;

  final int scene;

  LinkjoyArousalSonJaw(this.scene);

  bool get showBack => scene == 1;
}
