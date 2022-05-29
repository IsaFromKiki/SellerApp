import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import '../constants/theme_textstyles.dart';

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

InputDecoration DecorationTextField(String labelText) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
    filled: true,
    fillColor: ThemeColors.ymLightGrey,
    alignLabelWithHint: true,
    labelText: labelText,
    labelStyle: MyTheme.TextGreyNormalBold,
    border: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymDarkGrey, width: 2.0),
        borderRadius: BorderRadius.circular(4.0)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymDarkGrey, width: 2.0),
        borderRadius: BorderRadius.circular(4.0)),
  );
}

InputDecoration DecorationTextFieldNotEditable(String labelText) {
  return InputDecoration(
    filled: true,
    fillColor: ThemeColors.ymLightGrey,
    alignLabelWithHint: true,
    labelText: labelText,
    labelStyle: MyTheme.TextGreyNormalBold,
    border: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymDarkGrey, width: 2.0),
        borderRadius: BorderRadius.circular(4.0)),


  );
}

InputDecoration DecorationMandatoryTextField(
    String labelText, String hintText, String errorText) {
  return InputDecoration(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    filled: true,
    fillColor: ThemeColors.ymLightGrey,
    alignLabelWithHint: true,
    labelText: labelText,
    labelStyle: MyTheme.TextGreyNormalBold,
    hintText: hintText,
    errorText: errorText,
    errorStyle: MyTheme.TextRedNormal,
    border: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymDarkGrey, width: 2.0),
        borderRadius: BorderRadius.circular(4.0)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymDarkGrey, width: 2.0),
        borderRadius: BorderRadius.circular(4.0)),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymDarkGrey, width: 2.0),
        borderRadius: BorderRadius.circular(4.0)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymGreen, width: 3.0),
        borderRadius: BorderRadius.circular(4.0)),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymRed, width: 3.0),
        borderRadius: BorderRadius.circular(4.0)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.ymGreen, width: 3.0),
        borderRadius: BorderRadius.circular(4.0)),
  );
}
