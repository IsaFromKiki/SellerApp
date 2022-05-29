import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/constants/theme_textstyles.dart';
import 'package:seller_app/common/routes/routes.dart';
import 'package:seller_app/common/widgets/custom_button.dart';
import 'package:seller_app/common/widgets/custom_title.dart';
import 'package:seller_app/common/widgets/custom_app_bar.dart';
import 'package:seller_app/common/functions/functions.dart';
import 'package:seller_app/common/widgets/text_container.dart';


void main() {
  runApp(
    MaterialApp(home: NewPasswordPage()),
  );
}

class NewPasswordPage extends StatelessWidget {
  NewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithoutIcon(),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              addVerticalSpace(40),
              CustomTitle("Nieuw paswoord"),
              addVerticalSpace(30),
              TextContainer("Vul je e-mailadres in en je zult een e-mail ontvangen met een link waarmee je een nieuw paswoord kunt instellen."),
              addVerticalSpace(30),

              addVerticalSpace(30),
              addVerticalSpace(40),
              CustomButton("Verzenden", (){}),
              addVerticalSpace(30),
              CustomButtonTransparent("Nog geen account?", (){Navigator.of(context).pushReplacementNamed(Routes.signUp1);}),
              addVerticalSpace(10),
              CustomButtonTransparent("Aanmelden?", (){Navigator.of(context).pushReplacementNamed(Routes.logIn);}),
              addVerticalSpace(40),
            ],
          ),
        ],
      ),

    );
  }
}