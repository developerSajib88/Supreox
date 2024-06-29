
import 'package:supreox/data/api/api_method.dart';
import 'package:supreox/data/api/api_urls.dart';
import 'package:supreox/data/model/product/product_data_res.dart';

class ApiServices {

  // Get Home Screen Data API service
  static Future<ProductDataRes?> getHomeScreenData() async {
    Map<String, dynamic>? response = await ApiMethod().get(ApiUrls.productUri);
    if (response != null) {
      ProductDataRes productDataRes = ProductDataRes.fromJson(response);
      return productDataRes;
    } else {
      return null;
    }
  }

}
