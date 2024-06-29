import 'package:supreox/core/dependency_injection/dependency_injection_provider.dart';
import 'package:supreox/presentation/product/widgets/product_view.dart';
import 'package:supreox/presentation/product/widgets/vat_and_services.dart';
import 'package:supreox/utils/color_palates.dart';
import 'package:supreox/utils/constants/ui_constants.dart';

class ProductList extends HookConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    //final _productState = ref.watch(productProvider);

    return ListView.builder(
        //itemCount: _productState.productDataRes?.menu?.length,
        itemCount: 5,
        itemBuilder: (BuildContext context,index)=>
            const ProductView()
    );
  }
}
