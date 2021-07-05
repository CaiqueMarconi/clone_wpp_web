import 'package:flutter/material.dart';

class BottomTextField extends StatelessWidget {
  const BottomTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(10),
        height: 70,
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.account_circle_outlined, color: Colors.grey,size: 30,), onPressed: (){}),
            IconButton(icon: Icon(Icons.attach_file,color: Colors.grey,size: 30,), onPressed: (){}),
            SizedBox(width: 5,),
            Expanded(
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Digite uma mensagem',
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            IconButton(icon: Icon(Icons.audiotrack_outlined, size: 30, color: Colors.grey,), onPressed: (){})
          ],
        ),
      ),
    );
  }
}