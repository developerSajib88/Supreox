import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supreox/utils/color_palates.dart';
import 'package:supreox/utils/constants/ui_constants.dart';
import 'package:supreox/utils/custom_text_styles.dart';

class ProductView extends HookConsumerWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 1.sw,
      padding: padding8,
      child: Row(
        children: [

          Container(
            child: Image.network(
              "https://thumbs.dreamstime.com/b/pizza-isolated-white-background-34513031.jpg",
              width: 50.w,
              height: 50.w,
            ),
          ),

          gap4,

          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Round Table Pizza',
                      style: CustomTextStyles.titleTextStyles,
                    ),

                    const Spacer(),

                    Text(
                      '\$50.00',
                      textAlign: TextAlign.right,
                      style: CustomTextStyles.titleTextStyles.copyWith(
                          color: ColorPalates.lightPurple
                      ),
                    )
                  ],
                ),

                gap2,

                Row(
                  children: [

                    Text(
                      'Lorem ipsum dolor sit amet\nconsectetur.',
                      style: CustomTextStyles.descriptionTextStyles,
                    ),

                    const Spacer(),

                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 30.w,
                        height: 15.h,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.w,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: ColorPalates.deepOrange,
                            ),
                            borderRadius: radius4,
                          ),
                        ),
                        child: Text(
                          "Add",
                          style: CustomTextStyles.buttonTextStyles,
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}
