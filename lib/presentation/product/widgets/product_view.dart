import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductView extends HookConsumerWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 1.sw,
      height: 10,
      color: Colors.red,
    );
  }
}
