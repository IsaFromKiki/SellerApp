import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/constants/theme_textstyles.dart';
import 'package:seller_app/common/routes/route_generator.dart';
import 'package:seller_app/common/functions/functions.dart';

import '../../main.dart';



void main() {
  runApp(
    MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        // file: Color and textstyles, removes glow when scrolling
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        home: OrdersPage()),
  );
}

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // file: CustomAppBar
      // get cursor out of text field
      body: Container(
        padding: EdgeInsets.only(top:10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: TabBar(
                unselectedLabelColor: ThemeColors.ymDarkGrey,
                labelColor: ThemeColors.ymRed,
                indicatorColor: ThemeColors.ymLightGrey,
                labelStyle: MyTheme.TitleBigGrey,
                indicatorWeight: 4.0,
                tabs: [
                  Tab(text: "Te leveren"),
                  Tab(
                    text: "Geleverd",
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(children:[
                    addVerticalSpace(20),
                    Text("Products to be delivered"),],),
                  Column(children:[
                    addVerticalSpace(20),
                    Text("Delivered products"),],),
                ],
                controller: _tabController,
              ),
            ),
            addVerticalSpace(60), // file: Functions
          ],
        ),
      ),
    )
    // file: CustomBottomBar
        ;
  }
}

// keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
