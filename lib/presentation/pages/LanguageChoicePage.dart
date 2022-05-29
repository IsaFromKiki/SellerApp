import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/constants/theme_textstyles.dart';
import 'package:seller_app/common/functions/functions.dart';
import 'package:seller_app/common/functions/size_config.dart';
import 'package:seller_app/common/routes/route_generator.dart';
import 'package:seller_app/common/routes/routes.dart';
import '../../main.dart';

void main() {
  runApp(
    MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(), // file: Color and textstyles, removes glow when scrolling
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        home: LanguageChoicePage()),
  );
}

class LanguageChoicePage extends StatelessWidget {
  LanguageChoicePage();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ThemeColors.ymRed,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ThemeColors.ymRed,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Top bar same color as App bar
          statusBarColor: ThemeColors.ymRed,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addVerticalSpace(SizeConfig.blockSizeVertical * 25.0,),
            Container(
              width: SizeConfig.blockSizeHorizontal * 80.0,
              height:SizeConfig.blockSizeVertical * 15.0,
              child: SizedBox.expand(
                  child: Image.asset(
                    "assets/images/LogoYM.png",
                    fit: BoxFit.fitWidth,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: ThemeColors.ymGreen,
                        elevation: 2.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0)),
                    onPressed: () {},
                    child: Text("Français", style: MyTheme.TextButtonWhite),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: ThemeColors.ymGreen,
                        elevation: 2.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(Routes.logIn);

                    },
                    child: Text("Nederlands", style: MyTheme.TextButtonWhite),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
