import 'package:flutter/material.dart';
import 'package:search_my_book/model/listbook.dart';

class SearchReasult extends StatefulWidget {
  SearchReasult({Key? key,this.books}) : super(key: key);

  BookList? books;

  @override
  _SearchReasultState createState() => _SearchReasultState();
}

class _SearchReasultState extends State<SearchReasult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      
      children: [
        for ( Book item in widget.books!.listofbook?? []) 
          Container(
            child: BookTile(title: item.volumeInfo!.title, author: item.volumeInfo!.authors![0],publishers: item.volumeInfo!.publisher, smallthumb: item.volumeInfo!.imageLink!.smallThumbnail,)
          )
        
      ],
      ),
    );
  }
}

class BookTile extends StatefulWidget {
  BookTile({Key? key,this.author,this.publishers,this.smallthumb,this.title}) : super(key: key);

  String? title;
  String? author;
  String? publishers;
  String? smallthumb;

  @override
  _BookTileState createState() => _BookTileState();
}

class _BookTileState extends State<BookTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(widget.smallthumb!,height: 70,),
          Text(widget.title!),
          Text(widget.author!),
          Text(widget.publishers!)
        ],
      ),
    );
  }
}