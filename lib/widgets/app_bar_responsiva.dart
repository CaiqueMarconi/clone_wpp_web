import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppBarResponsiva extends StatefulWidget {

  @override
  _AppBarResponsivaState createState() => _AppBarResponsivaState();
}

class _AppBarResponsivaState extends State<AppBarResponsiva> {


  @override
  Widget build(BuildContext context) {

    final TABLET = ResponsiveWrapper.of(context).isTablet;

    return AppBar(
      toolbarHeight: 64,
      backgroundColor: Colors.grey[200],
      elevation: 1,
      title: Center(
        child: Row(
          children: [
            Expanded(
              flex: TABLET ? 1 : 2,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.black12)
                  )
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/doctor.png'),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(icon: Icon(Icons.add_to_photos, color: Colors.grey,), onPressed: (){}),
                          IconButton(icon: Icon(Icons.messenger, color: Colors.grey), onPressed: (){}),
                          IconButton(icon: Icon(Icons.more_horiz_sharp, color: Colors.grey), onPressed: (){}),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/doctor.png',),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Text("Nome",
                    style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 16),),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(icon: Icon(Icons.search, color: Colors.grey,), onPressed: (){}),
                        IconButton(icon: Icon(Icons.more_horiz_sharp, color: Colors.grey,), onPressed: (){}),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
