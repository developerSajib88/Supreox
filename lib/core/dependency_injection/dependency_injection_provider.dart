
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supreox/application/product/product_state.dart';
import 'package:supreox/application/product/product_state_notifier.dart';
import 'package:supreox/core/dependency_injection/dependency_injection.dart';

// Add to cart provider
final addToCartProvider = StateNotifierProvider<ProductStateNotifier, ProductState>((ref) =>
        ProductStateNotifier(addToCartDomain: getIt())..init());
