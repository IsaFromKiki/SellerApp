import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/functions/size_config.dart';
import 'package:seller_app/common/routes/routes.dart';
import 'package:seller_app/common/routes/route_generator.dart';
import 'package:seller_app/common/widgets/custom_button.dart';
import 'package:seller_app/common/widgets/custom_title.dart';
import 'package:seller_app/common/widgets/custom_app_bar.dart';
import 'package:seller_app/common/functions/functions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: RouteGenerator.generateRoute, home: LogInPage3());
  }
}

class LogInPage3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
      return Scaffold(
        appBar: CustomAppBarWithoutIcon(),
        body:

      ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          // get cursor out of text field
          children: <Widget>[
            Column(
              children: [
                addVerticalSpace(40),
                CustomTitle("Meld je aan"),
                addVerticalSpace(20),
                FormEmailPassword(),
              ],
            ),
            Column(
              children: [
                addVerticalSpace(10),
                CustomButton("Meld aan", () {
                  Navigator.of(context).pushReplacementNamed(Routes.main);
                }),
                addVerticalSpace(20),
                CustomButtonTransparent("Nog geen account?", () {
                  Navigator.of(context).pushReplacementNamed(Routes.signUp1);
                }),
                CustomButtonTransparent("Paswoord vergeten?", () {
                  Navigator.of(context).pushReplacementNamed(Routes.newPassword);
                }),
                addVerticalSpace(40),
              ],
            ),
          ],
        ),
      );
  }
}

Form FormEmailPassword() {
  return Form(
    child: Column(
      children: [
        SizedBox(
          width: SizeConfig.blockSizeHorizontal * 84.0,
          height: SizeConfig.blockSizeVertical * 10.5,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            keyboardType: TextInputType.emailAddress,
            cursorColor: ThemeColors.ymDarkGrey,
            decoration: DecorationMandatoryTextField("E-mail", " ",
                "Dit is geen geldig e-mailadres."), // file: Functions
          ),
        ),

        addVerticalSpace(10), // file: Functions
        SizedBox(
          width: SizeConfig.blockSizeHorizontal * 84.0,
          height: SizeConfig.blockSizeVertical * 10.5,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            obscureText: true,
            keyboardType: TextInputType.text,
            cursorColor: ThemeColors.ymDarkGrey,

            decoration: DecorationMandatoryTextField("Paswoord", " ",
                "Dit is geen geldig paswoord."), // file: Functions
          ),
        ),
      ],
    ),
  );
}
