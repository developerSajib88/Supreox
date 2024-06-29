import 'package:supreox/presentation/product/widgets/product_view.dart';
import 'package:supreox/presentation/product/widgets/vat_and_services.dart';
import 'package:supreox/utils/color_palates.dart';
import 'package:supreox/utils/constants/ui_constants.dart';

class ProductList extends HookConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 1.sw,
      height: 240.h,
      decoration: BoxDecoration(
        color: ColorPalates.backgroundColor,
        borderRadius: radius4,
      ),
      child:  Column(
        children: [

         const VatAndServiceWidget(),

         Expanded(
             child: ListView.builder(
                 itemBuilder: (BuildContext context,index)=>
                     ProductView()
             )
         )

        ],
      ),
    );
  }
}
