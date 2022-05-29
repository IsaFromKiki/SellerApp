import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/functions/size_config.dart';

import '../functions/functions.dart';

//old inputfield

class AuthTextField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final bool isPasswordField;
  final bool isRequiredField;
  final String errorText;
  final String labelText;

  const AuthTextField({
    required this.hintText,
    required this.onChanged,
    required this.keyboardType,
    required this.isPasswordField,
    required this.isRequiredField,
    required this.errorText,
    required this.labelText,
  }) ;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.blockSizeVertical * 10.0,
      width: SizeConfig.blockSizeHorizontal * 84.0,
      child: TextFormField(
          keyboardType: keyboardType,
          textAlignVertical: TextAlignVertical.bottom,
          cursorColor: ThemeColors.ymDarkGrey,
          decoration: DecorationMandatoryTextField(labelText, hintText, errorText), // file: Functions
          autocorrect: false,
          textInputAction: TextInputAction.done,
          obscureText: isPasswordField,
          maxLines: 1,
          onChanged: onChanged,
        autofocus: true,
      ),
    );
  }
}