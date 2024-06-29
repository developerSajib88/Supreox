import 'package:supreox/utils/color_palates.dart';
import 'package:supreox/utils/constants/ui_constants.dart';

class VatAndServiceWidget extends StatelessWidget {
  const VatAndServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 30.h,
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
      child: Text(
        ""
      ),
    );
  }
}
