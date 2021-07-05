import 'package:clone_wpp_web/widgets/contact_conversas.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ListaContatosRolavel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (_,__){

              return ContactConversas();
            }),
      ),
    );
  }
}
