import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supreox/presentation/product/product_list.dart';
import 'package:supreox/presentation/product/widgets/calculate_price.dart';
import 'package:supreox/presentation/product/widgets/vat_and_services.dart';
import 'package:supreox/utils/color_palates.dart';
import 'package:supreox/utils/constants/ui_constants.dart';

class ProductScreen extends HookConsumerWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          padding: padding6,
          child: Column(
            children: [

              const VatAndServiceWidget(),

              Container(
                  width: 1.sw,
                  height: 220.h,
                  decoration: BoxDecoration(
                    color: ColorPalates.backgroundColor,
                    borderRadius: radius4,
                  ),
                  child: const ProductList()
              ),

              const Spacer(),

              const CalculatePrice()


            ],
          ),

        ),
      ),
    );
  }
}
