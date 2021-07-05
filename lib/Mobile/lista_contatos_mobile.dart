import 'package:clone_wpp_web/widgets/contact_conversas.dart';
import 'package:flutter/material.dart';

class ListaContatosMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (_,__){

            return ContactConversas();
          }),
    );
  }
}
