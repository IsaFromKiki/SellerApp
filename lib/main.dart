import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/routes/route_generator.dart';
import 'common/routes/routes.dart';
import 'features/authentication/auth.dart';

void main() { runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => Auth())
      ],
    child: MyApp(),
  ),

);}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ThemeColors.ymGreenOpac
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
          scrollBehavior: MyCustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.languageChoice,

    );
  }
}


class MyCustomScrollBehavior extends MaterialScrollBehavior {   // removes glow when scrolling

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

