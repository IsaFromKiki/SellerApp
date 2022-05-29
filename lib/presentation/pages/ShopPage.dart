import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/common/constants/theme_colors.dart';
import 'package:seller_app/common/constants/theme_textstyles.dart';
import 'package:seller_app/common/functions/functions.dart';
import 'package:seller_app/common/functions/size_config.dart';
import 'package:seller_app/common/routes/route_generator.dart';
import 'package:seller_app/common/widgets/custom_title.dart';
import 'package:seller_app/common/widgets/loading_indicator.dart';



import '../../main.dart';

void main() {
  runApp(
    MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        // file: Color and textstyles, removes glow when scrolling
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        home: ShopPage()),
  );
}

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> with TickerProviderStateMixin {
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
        padding: EdgeInsets.only(top: 10.0),
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
                  Tab(text: "Shop"),
                  Tab(
                    text: "Toevoegen",
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(children: [
                    addVerticalSpace(20),
                    Text("Products in your shop"),
                  ],),
                  Column(children: [
                    addVerticalSpace(20),

                    Text("Add product here"),


                  ],),
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

