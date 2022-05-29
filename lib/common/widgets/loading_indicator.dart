import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';

Container circularProgress() {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(top: 10.0),
    child: CircularProgressIndicator(
       valueColor: AlwaysStoppedAnimation(ThemeColors.ymRed),
    ),
  );}

  Container linearProgress(){
  return Container(
    padding: EdgeInsets.only(bottom: 10.0),
    child: LinearProgressIndicator(
      backgroundColor: ThemeColors.ymLightGrey,
      valueColor: AlwaysStoppedAnimation(ThemeColors.ymRed),
    ),
  );
  }

//class LoadingIndicator extends StatelessWidget {
 // const LoadingIndicator(Key key) : super(key: key);

  //@override
  //Widget build(BuildContext context) {
   // return Container(
     // color: Colors.transparent,
      //child: Center(
     //   child: const CircularProgressIndicator(
       //   strokeWidth: 6,
//          valueColor: AlwaysStoppedAnimation<Color>(ThemeColors.ymGreen),
  //      ),
//      ),
//    );
//  }
//}
