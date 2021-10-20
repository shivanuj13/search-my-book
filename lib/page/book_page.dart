import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:search_my_book/model/listbook.dart';
import 'package:flutter_html/flutter_html.dart';

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
      appBar: AppBar(title: Text(widget.mybook!.volumeInfo!.title!),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0x00FFFFFF)),
      backgroundColor: Color(0xD1DBACD1),
      foregroundColor: Color(0xE7000000),
      ),
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
         child: Stack(
           children: [
             Column(
               children: [
                 Container(
                   height: 200,
                   color: Color(0x00FFFFFF),
                 ),
                 Container(
                  //  height: double.minPositive,
                   decoration: BoxDecoration(
                     color: Color(0xAEDFC8DF),
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 120.0,left: 20,right: 20,bottom: 20),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: [
                         Text('Title :',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                         Text(widget.mybook!.volumeInfo!.title!, style: TextStyle(fontSize: 18),),
                         Text('Subtitle :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                         Text(widget.mybook!.volumeInfo!.subtitle!, style: TextStyle(fontSize: 18)),
                         Text('Authors :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                         for (var item in widget.mybook!.volumeInfo!.authors!)
                           Text(item, style: TextStyle(fontSize: 18))
                         ,
                        Text('Description :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Html(data: widget.mybook!.volumeInfo!.discription!,style: {
                          "body" : Style(fontSize: FontSize(18))
                        },)
                       ],
                     )
                   ),
                 )
               ],
             ),
             Padding(
               padding: const EdgeInsets.only(top: 40,bottom: 20,left: 20,right: 20),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   boxShadow: [BoxShadow(
              offset: Offset(3.0,3.0),
              color: Color(0xD9494A4B),
              blurRadius: 3
            ),
            ]
                 ),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                   child: Image(
                     height: 250,
                     width: 200,
                     fit: BoxFit.fill,
                     image: NetworkImage(widget.mybook!.volumeInfo!.imageLink!.thumbnail!))),
               ),
             )
           ],
         ),
       ),
      ),
    );
  }
}