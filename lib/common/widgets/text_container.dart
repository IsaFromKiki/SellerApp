import 'package:flutter/material.dart';
import 'package:seller_app/common/functions/size_config.dart';
import '../constants/theme_textstyles.dart';

void main() {
  runApp(
    MaterialApp(home: Text(" BBB ")),
  );
}

class TextContainer extends StatelessWidget {
  final String Content;

  TextContainer(this.Content);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.blockSizeHorizontal * 84.0,
      child: Text(
          Content,
          style: MyTheme.TextGreyNormal),
    );
  }
}
