import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:search_my_book/model/listbook.dart';

class BookDetails extends StatefulWidget {
  BookDetails({Key? key,this.mybook}) : super(key: key);
  Book? mybook;

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                // background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%);
                Color(0xffa8edea),
                Color(0xfffed6e3)
              ])
          ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(widget.mybook!.volumeInfo!.imageLink!.thumbnail!,),
              Text(widget.mybook!.volumeInfo!.title!),
              Text(widget.mybook!.volumeInfo!.authors![0]),
              Text(widget.mybook!.volumeInfo!.publisher!),
              Text(widget.mybook!.volumeInfo!.discription!,style: TextStyle(fontSize: 16),)
            ],
          ),
        ),
      ),
    );
  }
}