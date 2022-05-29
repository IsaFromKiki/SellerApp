import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:provider/provider.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/functions/size_config.dart';
import 'package:seller_app/common/routes/routes.dart';
import 'package:seller_app/features/authentication/auth.dart';
import '../constants/theme_textstyles.dart';
import '../constants/assets_images.dart';

class CustomAppBarWithoutIcon extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWithoutIcon({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(65.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        // Top bar same color as App bar
        statusBarColor: ThemeColors.ymRed,
      ),
      elevation: 2.5,
      backgroundColor: ThemeColors.ymRed,
      title: Container(
        alignment: AlignmentDirectional.bottomStart,
        height: 60,
        child: Logo(),
      ),
    );
  }
}


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(65.0);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AppBar(
      automaticallyImplyLeading: false,
      //no back arrow when push and pop
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ThemeColors.ymRed, //Statusbar same color as appbar
      ),
      elevation: 2.5,
      backgroundColor: ThemeColors.ymRed,
      title: Container(
        alignment: AlignmentDirectional.bottomStart,
        height: 60,
        child: Logo(),
      ),
      actions: <Widget>[
        Container(
          child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
                onTap: () {
                  print("tapped on icon");
                },
                child: FocusedMenuHolder(
                    menuWidth: SizeConfig.blockSizeHorizontal * 60.0,
                    blurSize: 0.5,
                    blurBackgroundColor: ThemeColors.ymRed,
                    openWithTap: true,
                    onPressed: () {},
                    menuItems: [
                      FocusedMenuItem(
                          title: Text(
                            "Account",
                            style: MyTheme.LabelGreyBold,
                          ),
                          trailingIcon: Icon(
                            Icons.account_circle_outlined,
                            color: ThemeColors.ymDarkGrey,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(Routes.account);
                          }),
                      FocusedMenuItem(
                          title: Text(
                            "Voorwaarden",
                            style: MyTheme.LabelGreyBold,
                          ),
                          trailingIcon: Icon(
                            Icons.fact_check_outlined,
                            color: ThemeColors.ymDarkGrey,
                          ),
                          onPressed: () {}),
                      FocusedMenuItem(
                          title: Text(
                            "Contact",
                            style: MyTheme.LabelGreyBold,
                          ),
                          trailingIcon: Icon(
                            Icons.contact_page_outlined,
                            color: ThemeColors.ymDarkGrey,
                          ),
                          onPressed: () {}),
                      FocusedMenuItem(
                          title: Text(
                            "Afmelden",
                            style: MyTheme.LabelGreyBold,
                          ),
                          trailingIcon: Icon(
                            Icons.exit_to_app,
                            color: ThemeColors.ymDarkGrey,
                          ),
                          onPressed: () {
                            //Provider.of<Auth>(context, listen: false).logout();
                            Navigator.of(context).pushNamed(Routes.logIn);
                            Provider.of<Auth>(context, listen: false).logout();
                          }),
                    ],
                    child: Container(
                        height: 55.0,
                        alignment: Alignment.bottomRight,
                        child: IconMenu()))),
          ),
        ),
      ],
    );
  }
}
