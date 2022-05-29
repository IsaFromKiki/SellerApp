import 'package:flutter/material.dart';
import 'package:seller_app/common/routes/routes.dart';
import 'package:seller_app/presentation/pages/AccountPage.dart';
import 'package:seller_app/presentation/pages/LanguageChoicePage.dart';
import 'package:seller_app/presentation/pages/LogInPage.dart';
import 'package:seller_app/presentation/pages/LogInPage3.dart';
import 'package:seller_app/presentation/pages/MainPage.dart';
import 'package:seller_app/presentation/pages/NewPasswordPage.dart';
import 'package:seller_app/presentation/pages/SignUpPage1.dart';
import 'package:seller_app/presentation/pages/SignUpPage2.dart';
import 'package:seller_app/presentation/pages/SignUpPage3.dart';
import 'package:seller_app/presentation/pages/SignUpPage4.dart';

class RouteGenerator extends MaterialPageRoute {
  RouteGenerator({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.languageChoice:
        return MaterialPageRoute<dynamic>(builder: (_) => LanguageChoicePage());
      case Routes.logIn:
        return MaterialPageRoute<dynamic>(builder: (_) => LogInPage());
      case Routes.signUp1:
        return MaterialPageRoute<dynamic>(builder: (_) => SignUpPage1());
      case Routes.signUp2:
        return MaterialPageRoute<dynamic>(builder: (_) => SignUpPage2());
      case Routes.signUp3:
        return MaterialPageRoute<dynamic>(builder: (_) => SignUpPage3());
      case Routes.signUp4:
        return MaterialPageRoute<dynamic>(builder: (_) => SignUpPage4());
      case Routes.newPassword:
        return MaterialPageRoute<dynamic>(builder: (_) => NewPasswordPage());
      case Routes.main:
        return MaterialPageRoute<dynamic>(builder: (_) => MainPage());
      case Routes.account:
        return MaterialPageRoute<dynamic>(builder: (_) => AccountPage());
      default:
        return MaterialPageRoute<dynamic>(builder: (_) => LogInPage3());
    }
  }
}



