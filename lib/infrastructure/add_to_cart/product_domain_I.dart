import 'package:supreox/data/api/api_services.dart';
import 'package:supreox/data/model/product/product_data_res.dart';
import 'package:supreox/domain/add_to_cart/product_domain.dart';

class ProductDomainI implements ProductDomain{

  @override
  Future<ProductDataRes?> getProductDataRes()async =>
      await ApiServices.getProduct();

}