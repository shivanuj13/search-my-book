import 'package:flutter/material.dart';
import 'package:search_my_book/model/listbook.dart';
import 'package:search_my_book/page/search_result_page.dart';
import 'package:search_my_book/service/fetchbook.dart';



class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchtearm = TextEditingController();
  void searchg() async
  {
    BookList books;
    books = await fetchbook(searchtearm.text);
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchReasult(books: books,)) );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
               width: 300,
              child: TextField(
                controller: searchtearm,
                decoration: InputDecoration(
                  hintText: 'datr'
                ),
                onEditingComplete: searchg,
              ),
            ),
            Container(
              child: ElevatedButton(onPressed: (){searchg();}, child: Text('data') ),
            )
          ],
        ),
      ],
    );
  }
}