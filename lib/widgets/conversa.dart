import 'package:clone_wpp_web/widgets/text_conversa.dart';
import 'package:flutter/material.dart';

import 'bottom_text_conversa.dart';

class Conversa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/fundoWpp.jpg',
        width: double.maxFinite,
        height: double.maxFinite,
        fit: BoxFit.cover,),
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 800
            ),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                    child: TextConversa()),
                Align(
                  alignment: Alignment.topRight,
                    child: TextConversa()),
                Align(
                  alignment: Alignment.topLeft,
                    child: TextConversa()),
                Align(
                  alignment: Alignment.topRight,
                    child: TextConversa()),
                Align(
                  alignment: Alignment.topRight,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topLeft,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topRight,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topLeft,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topRight,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topLeft,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topRight,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topLeft,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topRight,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topLeft,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topRight,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topLeft,
                    child: TextConversa()),
                Align(
                    alignment: Alignment.topRight,
                    child: TextConversa()),
              ],
            ),
          ),
        ),
        BottomTextField(),
      ],
    );
  }
}


