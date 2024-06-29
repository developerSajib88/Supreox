
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supreox/application/add_to_cart/add_to_cart_state.dart';
import 'package:supreox/application/add_to_cart/add_to_cart_state_notifier.dart';
import 'package:supreox/core/dependency_injection/dependency_injection.dart';

// Add to cart provider
final addToCartProvider = StateNotifierProvider<AddToCartStateNotifier, AddToCartState>((ref) =>
        AddToCartStateNotifier(addToCartDomain: getIt())..init());
