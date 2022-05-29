import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/constants/theme_textstyles.dart';
import 'package:seller_app/common/functions/size_config.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function buttonOperation;

  CustomButton(this.buttonText, this.buttonOperation);

  @override
  Widget build(BuildContext context) {
      SizeConfig().init(context);
       return   Container(
              width: SizeConfig.blockSizeHorizontal * 84.0,

                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: ThemeColors.ymRed,
                      elevation: 2.5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0) ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0)),
                  onPressed: () { buttonOperation();},
                  child: Text(buttonText, style: MyTheme.TextButtonWhite),
                ),




      );
}}

class CustomButtonLogin extends StatelessWidget {
  final String buttonText;

  CustomButtonLogin(this.buttonText);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return   Container(
      width: SizeConfig.blockSizeHorizontal * 84.0,

      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: ThemeColors.ymRed,
            elevation: 2.5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0) ),
            padding:
            EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0)),
        onPressed: () { },
        child: Text(buttonText, style: MyTheme.TextButtonWhite),
      ),




    );
  }}

class CustomButtonTransparent extends StatelessWidget {
  final String buttonText;
  final Function buttonOperation;

  CustomButtonTransparent(this.buttonText, this.buttonOperation);


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
          return Container(
            alignment: Alignment.center,
            width: SizeConfig.blockSizeHorizontal * 84.0,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical:5.0)),
              onPressed: () { buttonOperation(); },
              child: Text(buttonText, style: MyTheme.LabelRedBold),
            ),


      );
}}
