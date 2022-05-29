import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/widgets/custom_app_bar.dart';
import 'package:seller_app/common/widgets/custom_bottom_bar.dart';
import 'package:seller_app/common/widgets/custom_title.dart';
import 'package:seller_app/common/functions/functions.dart';

void main() {
  runApp(
    MaterialApp(home: AccountPage()),
  );
}

class AccountPage extends StatelessWidget {
  AccountPage();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: ThemeColors.ymGreenOpac,
        appBar: CustomAppBar(),// file: CustomAppBar
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // get cursor out of text field
          children: <Widget> [
            addVerticalSpace(20),
            CustomTitleWithIcon("Account", Icon(Icons.close,),(){Navigator.pop(context);}),// file: CustomTitle
            addVerticalSpace(20),  // file: Functions
          ],
        ),
        
        bottomNavigationBar: CustomBottomBar(),// file: CustomBottomBar
      );
  }
}