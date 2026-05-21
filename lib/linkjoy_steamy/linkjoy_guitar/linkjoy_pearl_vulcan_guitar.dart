enum LinkjoyPearlVulcanGuitarDollhouse {
  tab_repeated_click,

  tab_changed,

  force_refresh,
}

class LinkjoyPearlVulcanGuitar {
  late LinkjoyPearlVulcanGuitarDollhouse scene;

  LinkjoyPearlVulcanGuitar({
    this.scene = LinkjoyPearlVulcanGuitarDollhouse.force_refresh,
  });
}
