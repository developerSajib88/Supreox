import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supreox/presentation/product/product_screen.dart';
import 'package:supreox/theme/app_theme.dart';

class SupreoxApp extends StatelessWidget {
  const SupreoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(187.5, 406),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) => MaterialApp(
        title: "Supreox",
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData,
        themeMode: ThemeMode.light,
        home: const ProductScreen(),
      ),
    );
  }
}
