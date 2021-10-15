import 'package:flutter/material.dart';
import 'package:search_my_book/model/listbook.dart';
import 'package:search_my_book/service/fetchbook.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(onPressed: () async{
          BookList merabook = await fetchbook();
          print(merabook.listofbook![1].title);
          print(merabook.listofbook![1].subtitle);
        
        }, child: Text('data')),
      ),
    );
  }
}