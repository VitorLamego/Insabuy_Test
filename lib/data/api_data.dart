import 'package:dio/dio.dart';

class ApiData {
  static List<dynamic> banners;
  static List<dynamic> categories;
  static List<dynamic> promotions;

  static Future getData() async {
    Dio dio = Dio();
    Response response = await dio.get(
        'https://api.instabuy.com.br/apiv3/layout',
        queryParameters: {"subdomain": "bigboxdelivery"});
    banners = response.data['data']['banners'];
    categories = response.data['data']['collection_items'];
    promotions = response.data['data']['promo'];
    getDeviceBanners(true);
    getAvailablePromotions();
  }

  static void getAvailablePromotions() {
    promotions.forEach((element) {
      if (!element['available_stock'] || !element['viisible'])
        promotions.remove(element);
    });
  }

  static void getDeviceBanners(bool mobileDevice) {
    List<dynamic> bannersList = [];
    if (mobileDevice) {
      for (int i = 0; i < banners.length; i++) {
        if (banners[i]['is_mobile']) bannersList.add(banners[i]);
      }
      banners = bannersList;
    }
  }
}
