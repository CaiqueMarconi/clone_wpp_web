import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("WhatsApp",
              style: TextStyle(fontWeight: FontWeight.w500),),
            Row(
              children: [
                Icon(Icons.search, color: Colors.grey,),
                SizedBox(width:10),
                Icon(Icons.menu, color: Colors.grey,),
              ],
            ),
          ],
        ),
        bottom: TabBar(
          tabs: [
            //IconButton(icon: Icon(Icons.camera_alt_rounded, color: Colors.grey,), onPressed: (){}),
            Text('CONVERSAS',),
            Text('STATUS'),
            Text('CHAMADAS'),
          ],
        ),
      ),
    );
  }
}
