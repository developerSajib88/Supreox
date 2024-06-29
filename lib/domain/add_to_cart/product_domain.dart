import 'package:supreox/data/model/product/product_data_res.dart';

abstract class ProductDomain {
  Future<ProductDataRes?> getProductDataRes();
}