import 'package:supreox/utils/color_palates.dart';
import 'package:supreox/utils/constants/ui_constants.dart';
import 'package:supreox/utils/custom_text_styles.dart';

class VatAndServiceWidget extends StatelessWidget {
  const VatAndServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 40.h,
      padding: padding6,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(1.00, 0.00),
          end: const Alignment(-1, 0),
          colors: [ColorPalates.deepOrange, ColorPalates.lightOrange],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: ColorPalates.defaultWhite),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.r),
            topRight: Radius.circular(5.r),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [

          Row(
            children: [
              Text(
                "Breakfast",
                style: CustomTextStyles.titleTextStyles.copyWith(
                  color: ColorPalates.defaultWhite
                ),
              ),
              
              const Spacer(),

              Icon(
                Icons.keyboard_arrow_up,
                color: ColorPalates.defaultWhite,
              )
            ],
          ),

          Text(
            "Vat(5%) Service Charge(5%)",
            style: CustomTextStyles.descriptionTextStyles.copyWith(
                color: ColorPalates.defaultWhite
            ),
          ),

        ],
      ),
    );
  }
}
