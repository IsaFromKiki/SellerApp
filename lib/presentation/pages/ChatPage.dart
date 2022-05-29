import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/widgets/custom_title.dart';
import 'package:seller_app/common/functions/functions.dart';


class ChatPage extends StatelessWidget {
  ChatPage();

  @override
  Widget build(BuildContext context) {
      return Scaffold(// file: CustomAppBar
        backgroundColor: ThemeColors.ymGreenOpac,
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // get cursor out of text field
          children: <Widget>[
            addVerticalSpace(30),
            CustomTitle("Gesprekken"),// file: CustomTitle
            addVerticalSpace(30),
            // file: Functions// function: infra
            addVerticalSpace(60),  // file: Functions
          ],
        ),

        // file: CustomBottomBar
      );
    }
  }
