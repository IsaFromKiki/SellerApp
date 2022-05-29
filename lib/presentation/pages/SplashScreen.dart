import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/functions/size_config.dart';
import 'package:seller_app/common/routes/routes.dart';

import '../../main.dart';


void main() {
  runApp(
    MaterialApp(
      scrollBehavior:
          MyCustomScrollBehavior(), // MyCustomScrollBehavior(): file Color and textstyles
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.top,
  ]);
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacementNamed(Routes.logIn);
  }

  initScreen(BuildContext context)
  {
    AssetImage assetImage = AssetImage("images/IconYMrectangle.png");
    Image image = Image(
      image: assetImage,
      height: SizeConfig.blockSizeVertical * 20.0,
      width: SizeConfig.blockSizeHorizontal * 40.0
    );

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: ThemeColors.ymRed,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: image,
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "E Commerce App",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),   // padding top for button
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        )
      ],
    );
  }
}