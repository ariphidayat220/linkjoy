class LinkjoyThawJaw {
  late String title;
  late String url;

  late bool showHtmlTitle;
  late bool showNavbar;

  late bool closeable;

  LinkjoyThawJaw(
    this.title,
    this.url, {
    this.showNavbar = true,

    this.showHtmlTitle = true,
    this.closeable = true,
  });
}
