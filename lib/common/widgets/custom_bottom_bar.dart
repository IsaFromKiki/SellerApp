import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import '../../common/constants/assets_images.dart';

void main() {
  runApp(
    MaterialApp(home: CustomBottomBar()),
  );
}

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar();



  @override
  Widget build(BuildContext context) {

      return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          activeIcon: IconProfileActive(),
          icon: IconProfile(),
          label: "",
        ),
        BottomNavigationBarItem(
          activeIcon: IconShopActive(),
          icon: IconShop(),
          label: " ",
        ),
        BottomNavigationBarItem(
          activeIcon: IconOrdersActive(),
          icon: IconOrders(),
          label: " ",
        ),
        BottomNavigationBarItem(
            activeIcon: IconChatActive(),
            icon: IconChat(),
            label: " "),
      ],

      type: BottomNavigationBarType.fixed,
      backgroundColor: ThemeColors.ymRed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,


        );
  }
}



