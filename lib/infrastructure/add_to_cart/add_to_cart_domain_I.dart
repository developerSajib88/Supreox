import 'package:supreox/data/api/api_services.dart';
import 'package:supreox/data/model/product/product_data_res.dart';
import 'package:supreox/domain/add_to_cart/add_to_cart_domain.dart';

class AddToCartDomainI implements AddToCartDomain{

  @override
  Future<ProductDataRes?> getProductDataRes()async =>
      await ApiServices.getProduct();

}