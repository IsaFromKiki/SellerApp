import 'package:flutter/material.dart';
import 'package:seller_app/common/widgets/AuthTextField.dart';
import 'package:seller_app/common/widgets/custom_app_bar.dart';
import 'package:seller_app/common/widgets/custom_button.dart';
import 'package:seller_app/common/functions/functions.dart';

void main() {
  runApp(
    MaterialApp(home: Validation()),
  );  // MyCustomScrollBehavior(): file Color and textstyles
}

class Validation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBarWithoutIcon(),
      body: Center(
        child: Column(
          children: [
            addVerticalSpace(30),
            AuthTextField(
              isPasswordField: false,
              labelText: 'E-mail',
              keyboardType: TextInputType.emailAddress,
              hintText: 'E-mail',
              errorText: 'Geen geldig e-mailadres',
              onChanged: (String value) {
                print("OK");
              },
              isRequiredField: true,
            ),
            addVerticalSpace(10.0),
            AuthTextField(
              isPasswordField: true,
                hintText: 'Paswoord',
                onChanged: (String value) {
                  print('OK2');
                },
                keyboardType: TextInputType.text,
                errorText: 'geen geldig paswoord',
                labelText: 'paswoord', isRequiredField: true,),
            addVerticalSpace(10),
            CustomButton('Meld aan', (){})
          ],
        ),
      ),
    );
  }
}
