import 'package:get_it/get_it.dart';
import 'package:supreox/application/add_to_cart/add_to_cart_state.dart';
import 'package:supreox/domain/add_to_cart/add_to_cart_domain.dart';
import 'package:supreox/infrastructure/add_to_cart/add_to_cart_domain_I.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton<AddToCartDomain>(AddToCartDomainI.new);
}
