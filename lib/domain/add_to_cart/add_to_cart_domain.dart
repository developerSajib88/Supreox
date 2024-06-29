import 'package:supreox/data/model/product/product_data_res.dart';

abstract class AddToCartDomain {
  Future<ProductDataRes?> getProductDataRes();
}