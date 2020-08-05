import 'package:flutter/material.dart';

class FirstNews extends StatelessWidget {
  final String photo;
  final String title;
  final String date;
  FirstNews({this.date, this.title, this.photo});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(photo)),
              ),
            ),
            Container(
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 330,
                        child: Wrap(
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            // Text("and phone problems as",
                            //     style: TextStyle(
                            //         fontSize: 22,
                            //         fontWeight: FontWeight.bold)),
                            // Text("deadline looms",
                            //     style: TextStyle(
                            //         fontSize: 22,
                            //         fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: <Widget>[
                        Wrap(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Text(date,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
