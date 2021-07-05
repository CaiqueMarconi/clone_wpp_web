import 'package:clone_wpp_web/Mobile/mobile.dart';
import 'package:clone_wpp_web/widgets/app_bar_responsiva.dart';
import 'package:clone_wpp_web/Mobile/appbar_mobile.dart';
import 'package:clone_wpp_web/widgets/conversa.dart';
import 'package:clone_wpp_web/widgets/list_conversas.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){

      double maxWidth = constraints.maxWidth;
      print(constraints.biggest);

      return  Scaffold(
          appBar: maxWidth > 600 ? PreferredSize(
            child: AppBarResponsiva(),
            preferredSize: Size(double.maxFinite, 64),
          ) : PreferredSize(
              child: AppBarMobile(),
              preferredSize: Size(double.maxFinite, 100)),
          body: maxWidth > 600 ? Row(
            children: [
              ListConversas(),
              Expanded(
                flex: 3,
                child: Conversa(),
              ),
            ],
          )
              :
          MobilePage(),
      );
    });

  }
}
