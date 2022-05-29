import 'dart:developer';
import  'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/constants/theme_textstyles.dart';
import 'package:seller_app/common/functions/size_config.dart';
import 'package:seller_app/common/widgets/custom_app_bar.dart';
import 'package:seller_app/common/widgets/custom_button.dart';
import 'package:seller_app/common/widgets/custom_title.dart';
import 'package:seller_app/common/functions/functions.dart';
import 'package:seller_app/common/routes/routes.dart';
import 'package:seller_app/features/authentication/auth.dart';


class LogInPage extends StatefulWidget {
  LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

//global key
//email, password variable
//form
//textformfield
//submit

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _email = ' ';
  String _password = ' ';

  void submit()  {
    log(_email);
    log(_password);
    Provider.of<Auth>(context, listen: false).login(
      credentials: {
        'email': _email,
        'password': _password,
      }
    );
    Navigator.of(context)
        .pushReplacementNamed(Routes.main);
  }

 //@override
 //void initState() {
 //super.initState();
 //}

 //@override
 //void dispose() {
 //_emailController.dispose();
 //_passwordController.dispose();
 //super.dispose();
 //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWithoutIcon(),
        body: ListView(
          children: <Widget>[
        Column(
        children: [
                addVerticalSpace(30),
                CustomTitle("Meld je aan"),
                addVerticalSpace(20),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 50.00,
                  width: SizeConfig.blockSizeHorizontal * 84.0,
                  child: Form(
                    key: _formKey,
                    child:
                      Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Vul je e-mailadres in.';
                              String pattern = r'\w+@\w+\.\w+';
                              if (!RegExp(pattern).hasMatch(value))
                                return 'Vul een geldig e-mailadres in.';
                              return null;
                            },
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: ThemeColors.ymDarkGrey,
                            decoration:
                                DecorationTextField("E-mail"), // file: Functions
                            onSaved: (value) => {
                              _email = value!,
                            },
                          ),
                      addVerticalSpace(20), // file: Functions
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Vul je paswoord in.';
                          String pattern =
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
                          if (!RegExp(pattern).hasMatch(value))
                            return 'Min. 8 tekens, waaronder een hoofdletter en cijfer.';
                          return null;
                        },
                        textAlignVertical: TextAlignVertical.center,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        cursorColor: ThemeColors.ymDarkGrey,
                        decoration:
                            DecorationTextField("Paswoord"),
                        onSaved: (value) => {
                          _password = value!,
                        },// file: Functions
                      ),
                      addVerticalSpace(20),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 84.0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: ThemeColors.ymRed,
                              elevation: 2.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0)),
                              padding: EdgeInsets.symmetric(vertical: 12.0)),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              this.submit();
                            }else{};
                          },
                          child: Text('Meld aan', style: MyTheme.TextButtonWhite),
                        ),),

                      CustomButtonTransparent("Paswoord vergeten?", () {
                        Navigator.of(context)
                            .pushReplacementNamed(Routes.newPassword);
                      }),
                      addVerticalSpace(40),
                    ],
                  ),
                ),
                ),],
            ),
          ],),
        );
  }
}
