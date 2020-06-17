import 'package:flutter/material.dart';
import '../styles/styles.dart';

class UserTile extends StatelessWidget {
  final int id;
  final String name;
  final double salary;
  final Function thumbsUpCallback;
  final Function thumbsDowmCallback;
  
  UserTile(
      {this.id,
      this.name,
      this.salary,
      this.thumbsUpCallback,
      this.thumbsDowmCallback});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            Padding(padding: EdgeInsets.only(top: 10), child: Text("$id.")),
        title: Text(
          name,
          textScaleFactor: 1.05,          
        ),
        subtitle: Text(
          "\u{20B9} ${salary.floor()}.0",
          textScaleFactor: 1.11,
          style: blackStyle,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.thumb_up,
                  color: Colors.lightGreen,
                ),
                onPressed: thumbsUpCallback),
            SizedBox(width: 30),
            IconButton(
                icon: Icon(
                  Icons.thumb_down,
                  color: Colors.red,
                ),
                onPressed: thumbsDowmCallback),
          ],
        ),
      ),
      elevation: 10,
    );
  }
}
