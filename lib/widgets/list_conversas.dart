import 'package:auto_size_text/auto_size_text.dart';
import 'package:clone_wpp_web/widgets/lista_contatos_rolavel.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ListConversas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final TABLET = ResponsiveWrapper.of(context).isTablet;

    return Expanded(
      flex: TABLET ? 1 : 2,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.blue[200],
              height: 100,
              width: double.maxFinite,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.warning_amber_outlined),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText('Receba notificações de novas mensagens',
                              minFontSize: 8,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 1),),
                            AutoSizeText('Ativar notificações na área de trabalho >',
                              minFontSize: 8,
                              style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(10),
              height: 60,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Icon(Icons.search,),
                  hintText: TABLET ? 'Pesquisar ou começar uma nova conversa' : '',
                  hintStyle: TextStyle(color: Colors.grey
                  )
                ),
              ),
            ),
            ListaContatosRolavel()
          ],
        ),
      );
  }
}
