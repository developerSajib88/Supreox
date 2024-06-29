import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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


            ],
          ),

        ),
      ),
    );
  }
}
