import 'package:fast_app_base/screen/main/tab/home/vo/banner_type.dart';

class Banner {
  final int id;
  final String name;
  final BannerType bannerType;
  final String linkUrl;

  Banner.named(
    this.id,
    this.name,
    this.bannerType,
    this.linkUrl,
  );
}
