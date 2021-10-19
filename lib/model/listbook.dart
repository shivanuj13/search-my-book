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
  String? selfLink;
  VolumeInfo? volumeInfo;

  Book({this.selfLink,this.volumeInfo});
  factory Book.fromMap(Map<String,dynamic> map) {
    return Book(
      selfLink: map['selfLink'],
      volumeInfo: VolumeInfo.fromMap(map['volumeInfo'])
    );
  }

}

class VolumeInfo {
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? discription;
  List<IndustryIdentifiers>? industryIdentifiers;
  ImageLink? imageLink;
  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.discription,
    this.industryIdentifiers,
    this.imageLink,
  });

   factory VolumeInfo.fromMap(Map<String, dynamic> map) {
    // List<IndustryIdentifiers> ind = [];
    // for(Map<String,dynamic> i in map['industryIdentifiers']){
    //   IndustryIdentifiers m = IndustryIdentifiers.fromMap(i);
    //   ind.add(m);
    // }
    return VolumeInfo(
      title: map['title'],
      subtitle: map['subtitle'],
      authors: List<String>.from(map['authors']),
      publisher: map['publisher'],
      publishedDate: map['publishedDate'],
      discription: map['description'],
      industryIdentifiers: [],
      imageLink: ImageLink.fromMap(map['imageLinks']
        // "smallThumbnail": "http://books.google.com/books/content?id=C9GQMwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
        //   "thumbnail": "http://books.google.com/books/content?id=C9GQMwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
      ),
    );

}
}


class ImageLink {
  String? smallThumbnail;
  String? thumbnail;
  ImageLink({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLink.fromMap(Map<String, dynamic> map) {
    return ImageLink(
      smallThumbnail: map['smallThumbnail'],
      thumbnail: map['thumbnail'],
    );
  }
}

class IndustryIdentifiers {

}