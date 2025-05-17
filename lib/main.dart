import 'package:bookly_app/core/utils/gt_sectra_fine_theme.dart';
import 'package:bookly_app/core/utils/montserrat_theme.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(textTheme: montserratTheme()),
      home: const SplashView(),
    );
  }
}
/*
TextTheme(
  bodyText1: GoogleFonts.montserratAlternates(
    textStyle: TextStyle(fontFamily: 'DefaultFallbackFont'),
  ),
),
*/ 