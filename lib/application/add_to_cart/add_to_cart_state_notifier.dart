import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supreox/application/add_to_cart/add_to_cart_state.dart';
import 'package:supreox/domain/add_to_cart/add_to_cart_domain.dart';

class AddToCartStateNotifier extends StateNotifier<AddToCartState>{
  final AddToCartDomain addToCartDomain;
  AddToCartStateNotifier({required this.addToCartDomain}):super(AddToCartState.init());

  void _stateMaker({required AddToCartState newState}) => state = newState;



}