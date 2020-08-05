import 'package:flutter/material.dart';

class SecondNews extends StatelessWidget {
  final String photo;
  final String title;
  final String date;
  SecondNews({this.date, this.title, this.photo});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
               padding: EdgeInsets.symmetric(horizontal:4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  Text(title),
                  SizedBox(
                    height: 5,
                  ),
                  Text(date,style: TextStyle(color: Theme.of(context).primaryColor),)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(photo),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
