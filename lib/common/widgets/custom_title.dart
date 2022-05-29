import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/functions/size_config.dart';
import '../../common/constants/theme_textstyles.dart';

class CustomTitle extends StatelessWidget {
  final String Title;

  CustomTitle(this.Title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Title,
          style: MyTheme.TitleBigRed,
        ),
      ],
    );
  }
}

class CustomTitleLeft extends StatelessWidget {
  final String Title;

  CustomTitleLeft(this.Title);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: SizeConfig.blockSizeHorizontal * 84.0,
          child: Text(
            Title,
            style: MyTheme.TitleBigRed,
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }
}

class CustomTitleWithIcon extends StatelessWidget {
  final String title; final Icon icon; Function function;

  CustomTitleWithIcon(this.title, this.icon, this.function);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double margin = SizeConfig.blockSizeHorizontal * 8.0;

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: MyTheme.TitleBigRed,
            textAlign: TextAlign.left,
          ),
          IconButton( iconSize: 40.0, icon: Icon(icon.icon, color: ThemeColors.ymRed, size: 35.0), onPressed:() { function();}),
         ], ),
    );

  }

}

     //constructor

