import 'package:clone_wpp_web/Mobile/lista_contatos_mobile.dart';
import 'package:clone_wpp_web/widgets/lista_contatos_rolavel.dart';
import 'package:flutter/material.dart';

class MobilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            ListaContatosMobile(),
            Icon(Icons.camera_alt_rounded),
            Icon(Icons.camera_alt_rounded),
          ],
        ),
      ),
    );
  }
}
