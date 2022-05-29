import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/constants/theme_textstyles.dart';
import 'package:seller_app/common/functions/functions.dart';
import 'package:seller_app/common/functions/size_config.dart';
import 'package:seller_app/features/authentication/auth.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

      @override
      Widget build(BuildContext context) {
        SizeConfig().init(context);
      return Scaffold(// file: CustomAppBar
        backgroundColor: ThemeColors.ymGreenOpac,
        body: Consumer<Auth>(
          builder: (context, auth, child) {
              return ListView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
                    .onDrag,
                // get cursor out of text field (TO DO: if field is empty)
                children: <Widget>[
                  addVerticalSpace(30), // file: Functions
                  getBox(), // function: infra
                  addVerticalSpace(60), // file: Functions
                ],
              );
            }
          ),);
          // file: CustomBottomBar

}

Column getBox() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: SizeConfig.blockSizeHorizontal * 14,
        height: SizeConfig.blockSizeHorizontal * 14,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: ThemeColors.ymRed, width: 3.0),
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/300/300"),
          ),
        ),
      ),
      addVerticalSpace(20),
      Text( Auth().user.name  , style: MyTheme.TitleBigRed),
      addVerticalSpace(20),
      Container(
        width: SizeConfig.blockSizeHorizontal * 84,
        child: TextFormField(
          minLines: 3,
          maxLines: null,
          maxLength: 500,
          keyboardType: TextInputType.text,
          cursorColor: ThemeColors.ymDarkGrey,
          style: MyTheme.TextGreyNormal,
          decoration: DecorationTextField("Beschrijf hier wie je bent en wat je doet",  ) // file: Functions


        ),
      ),
      Container(
  child:  Consumer<Auth>(
    builder: (context, auth, child){
      if(auth.authenticated){
        return Text('You are logged in');
      } else {
        return Text('You are not logged in.');
      }
    }
  )
  ),

    ],
  );
}}
