import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:search_my_book/model/listbook.dart';

Future<BookList> fetchbook() async {
  var url = Uri.parse('https://www.googleapis.com/books/v1/volumes?q=php');
  http.Response response = await http.get(url);
 // print(response.body);
  return BookList.fromMap(jsonDecode(response.body));

}