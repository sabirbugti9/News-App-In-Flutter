import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_messenger/widget/first_news.dart';
import 'package:my_messenger/widget/second_news.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String photo;
  String title;
  String date;
  Future<void> getData() async {
    String url =
        "https://ninanews.com/NinaNewsService/api/values/GetLastXBreakingNews?rowsToReturn=10";
    var response = await http.get(url);
    Map<String, dynamic> map = jsonDecode(response.body);
    map.forEach((key, value) {
      if (value[0]['Pic'] == null) {
        return;
      }
      photo = value[2]["Pic"];
      title = value[2]["Khabar_Title"];
      date = value[2]["Khabar_Date"];
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print(photo);
    print(title);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          centerTitle: true,
          title: Text(
            "News",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                FirstNews(
                  date: date,
                  photo: photo,
                  title: title,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      SecondNews(
                        date: date,
                        photo: photo,
                        title: title,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SecondNews(
                        date: date,
                        photo: photo,
                        title: title,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SecondNews(
                        date: date,
                        photo: photo,
                        title: title,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
