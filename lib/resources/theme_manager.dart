import 'package:book_store/resources/style_manager.dart';
import 'package:book_store/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'color_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    textTheme: TextTheme(
      displaySmall: getRegularStyle(fontSize: AppSize.s16, color: ColorManager.darkBlue,),
      displayMedium: getSemiBoldStyle(fontSize: AppSize.s20, color: ColorManager.darkBlue),
      displayLarge: getBoldStyle(fontSize: AppSize.s20, color: ColorManager.primary,),
      headlineSmall: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.primary,),

    ),
    sliderTheme:  SliderThemeData(
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 1),
        overlayShape: SliderComponentShape.noThumb,
      inactiveTrackColor: ColorManager.lightGrey,
        activeTrackColor: ColorManager.darkBlue


    ),


    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.lightBlue1),
      unselectedLabelStyle: getRegularStyle(fontSize: AppSize.s14,color: ColorManager.lightGrey)
    ),
    disabledColor: ColorManager.lightGrey,
primaryColor: ColorManager.primary,
    appBarTheme: AppBarTheme(
      titleTextStyle: getSemiBoldStyle(fontSize: AppSize.s18, color: ColorManager.darkBlue),
      backgroundColor: ColorManager.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: ColorManager.white,
          width: AppSize.s1
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        backgroundColor: Colors.transparent.withOpacity(0.1),
      )
    ),
  );
}