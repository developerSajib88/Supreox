import 'package:supreox/utils/color_palates.dart';
import 'package:supreox/utils/constants/ui_constants.dart';
import 'package:supreox/utils/custom_text_styles.dart';

class CalculatePrice extends StatelessWidget {
  const CalculatePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 60.h,
      padding: padding6,
      decoration: BoxDecoration(
        color: ColorPalates.lightOrange.withOpacity(0.2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.r),
          topRight: Radius.circular(4.r)
        )
      ),
      child: Column(
        children: [

          Row(
            children: [

              Text(
                "Subtotal",
                style: CustomTextStyles.titleTextStyles,
              ),

              const Spacer(),

              Text(
                "\$310",
                style: CustomTextStyles.titleTextStyles
                    .copyWith(color: ColorPalates.deepOrange
                ),
              ),

            ],
          ),

          Row(
            children: [

              Text(
                "Vat(5%) Service Charge included (5%)",
                style: CustomTextStyles.descriptionTextStyles,
              ),

              const Spacer(),

              Text(
                "\$5.5",
                style: CustomTextStyles.titleTextStyles
                    .copyWith(color: ColorPalates.lightPurple
                ),
              ),

            ],
          ),

          Divider(color: ColorPalates.deepOrange),

          Row(
            children: [

              Text(
                "Total",
                style: CustomTextStyles.titleTextStyles,
              ),

              const Spacer(),

              Text(
                "\$316",
                style: CustomTextStyles.titleTextStyles
                    .copyWith(color: ColorPalates.deepOrange
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
