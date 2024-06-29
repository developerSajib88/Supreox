import 'package:equatable/equatable.dart';
import 'package:supreox/data/model/product/product_data_res.dart';

class AddToCartState extends Equatable{
  final bool isLoading;
  final ProductDataRes? productDataRes;

  const AddToCartState({
    required this.isLoading,
    required this.productDataRes
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    isLoading,
    productDataRes
  ];

  factory AddToCartState.init()=> const AddToCartState(
      isLoading: false,
      productDataRes: null
  );

  AddToCartState copyWith({
    bool? isLoading,
    ProductDataRes? productDataRes
  })=> AddToCartState(
      isLoading: isLoading ?? this.isLoading,
      productDataRes: productDataRes ?? this.productDataRes
  );

}