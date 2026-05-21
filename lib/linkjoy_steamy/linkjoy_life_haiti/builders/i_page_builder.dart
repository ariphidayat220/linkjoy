import '../models/beauty_page_info.dart';

abstract class IPageBuilder {
  Future<BeautyPageInfo> buildPage();
}
