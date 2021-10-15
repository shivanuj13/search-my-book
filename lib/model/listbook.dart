class BookList {
  List<Book>? listofbook;

  BookList({this.listofbook});
  factory BookList.fromMap(Map<String,dynamic> map) {
    return BookList(
      listofbook: generateList(map)
    );
  }
}

List<Book> generateList(Map<String,dynamic> map) {
  List<Book> books=[];

  for (var item in map['items']) {
    Book abook = Book.fromMap(item);
    books.add(abook);
  }
  return books;
}

class Book {
  String? title;
  String? subtitle;

  Book({this.subtitle,this.title});
  factory Book.fromMap(Map<String,dynamic> map) {
    return Book(
      title: map['volumeInfo']['title'],
      subtitle: map['volumeInfo']['subtitle']
    );
  }
}