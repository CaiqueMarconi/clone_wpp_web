import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContactConversas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[100]))),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/doctor.png'),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('John Wick',
                    minFontSize: 8,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                    AutoSizeText('alguma coisa e tal',
                    minFontSize: 8,
                    style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Text('15:30'),
            ],
          ),

        ],
      ),
    );
  }
}
