import 'package:flutter/material.dart';


class Logo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconYMrectangle.webp");
  }
}

class IconMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/IconMenu.webp",
          scale: 2.7),
      height: 60,
      alignment: AlignmentDirectional.bottomEnd,
    );
  }
}

class IconProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconProfile.webp",
        height: 50, width: 50);
  }
}

class IconProfileActive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconProfile.webp",
        height: 50, width: 50);
  }
}

class IconShop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconShop.webp",
        height: 50, width: 50);
  }
}

class IconShopActive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconShop.webp",
        height: 50, width: 50);
  }
}

class IconOrders extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconOrders.webp",
        height: 50, width: 50);
  }
}

class IconOrdersActive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconOrders.webp",
        height: 50, width: 50);
  }
}

class IconChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconChat.webp",
        height: 55, width: 55);
  }
}

class IconChatActive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/IconChat.webp",
        height: 55, width: 55);
  }
}