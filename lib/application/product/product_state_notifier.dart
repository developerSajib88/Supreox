import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supreox/application/product/product_state.dart';
import 'package:supreox/domain/add_to_cart/product_domain.dart';

class ProductStateNotifier extends StateNotifier<ProductState>{

  final ProductDomain addToCartDomain;
  ProductStateNotifier({required this.addToCartDomain}):super(ProductState.init());

  void _stateMaker({required ProductState newState}) => state = newState;

  void init(){
    getProductData();
  }

  Future<void> getProductData()async{
    _stateMaker(newState: state.copyWith(isLoading : true));
    await addToCartDomain.getProductDataRes().then((value) {
      if(value != null){
        _stateMaker(
            newState: state.copyWith(
              isLoading: false,
              productDataRes: value
            )
        );
      }else{
        _stateMaker(newState: state.copyWith(isLoading : true));
      }
    });
  }


}