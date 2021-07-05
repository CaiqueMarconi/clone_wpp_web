import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextConversa extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(08),
        color: Color(0xffa4ed9d)
      ),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Conversa tal'),
            Text('18:45 ✓✓',
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black12),)
          ],
        ),
      ),
    );
  }
}
