import 'package:get_it/get_it.dart';
import 'package:supreox/domain/add_to_cart/product_domain.dart';
import 'package:supreox/infrastructure/add_to_cart/product_domain_I.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton<ProductDomain>(ProductDomainI.new);
}
