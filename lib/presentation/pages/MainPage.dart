import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/widgets/custom_app_bar.dart';
import 'package:seller_app/common/constants/assets_images.dart';
import 'package:seller_app/presentation/pages/ProfilePage.dart';
import 'package:seller_app/presentation/pages/ShopPage.dart';
import 'package:seller_app/presentation/pages/ChatPage.dart';
import 'package:seller_app/presentation/pages/OrdersPage.dart';

void main() {
  runApp(
    MaterialApp(home: MainPage()),
  ); // MyCustomScrollBehavior(): file Color and textstyles
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;
  List<Widget> pageList = <Widget>[];

  void initState() {
    super.initState();
    pageList.add(ProfilePage());
    pageList.add(ShopPage());
    pageList.add(OrdersPage());
    pageList.add(ChatPage());
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: CustomAppBar(), // file: CustomAppBar
        body: IndexedStack(
          index: _selectedPage,
          children: pageList,
        ),

        bottomNavigationBar: BottomNavigationBar(
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
                activeIcon: IconChatActive(), icon: IconChat(), label: " "),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: ThemeColors.ymRed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          currentIndex: _selectedPage,
          onTap: _onItemTapped,
        ),

        // file: CustomBottomBar
      );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
