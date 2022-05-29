import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/functions/functions.dart';
import 'package:seller_app/common/functions/size_config.dart';

class BoxedTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboard;
  final bool isInputHidden;
  final FocusNode focusNode;
  BoxedTextField(
      {this.isInputHidden = false,
      this.keyboard = TextInputType.text,
      required this.controller,
      required this.focusNode,
      required this.hintText,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.blockSizeVertical * 10.0,
      width: SizeConfig.blockSizeHorizontal * 84.0,
      child: TextFormField(
        maxLines: 1,
        textAlignVertical: TextAlignVertical.bottom,
        cursorColor: ThemeColors.ymDarkGrey,
        decoration: DecorationTextField(hintText),
        controller: controller,
        obscureText: isInputHidden,
        keyboardType: keyboard,
        focusNode: focusNode,
      ),
    );
  }
}
