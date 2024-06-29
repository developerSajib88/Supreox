import 'package:equatable/equatable.dart';
import 'package:supreox/data/model/product/product_data_res.dart';

class ProductState extends Equatable{
  final bool isLoading;
  final ProductDataRes? productDataRes;

  const ProductState({
    required this.isLoading,
    required this.productDataRes
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    isLoading,
    productDataRes
  ];

  factory ProductState.init()=> const ProductState(
      isLoading: false,
      productDataRes: null
  );

  ProductState copyWith({
    bool? isLoading,
    ProductDataRes? productDataRes
  })=> ProductState(
      isLoading: isLoading ?? this.isLoading,
      productDataRes: productDataRes ?? this.productDataRes
  );

}