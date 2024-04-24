import 'package:fruit_e_commerce/core/entities/book_entity.dart';

class BookModel extends BookEntity {
  const BookModel({required super.bookId, required super.title, required super.description, required super.bookCover, required super.bookPdf, required super.rate, required super.numberOfPages, required super.bookVersion, required super.categoryId, required super.publishingDate, required super.author});
  factory BookModel.fromJson(Map<String, dynamic> json) {
   
    return BookModel(
      bookId: json['id'] ?? "",
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      bookCover: json['coverUrl'] ?? "",
      bookPdf: json['bookUrl'] ?? "",
      rate: json['rate'] ?? 0.0,
      numberOfPages: json['no_Pages'] ?? 0,
      bookVersion: json['version'] ?? "",
      categoryId: json['categoryId'] ?? "",
      author: json['authorName'] ?? "",
      publishingDate: DateTime.parse(json['publishing_date'] ?? "1960-11-07T00:00:00"),
    );
  }

  Map<String, dynamic> toJson() => {'id': bookId, 'title': title, 'description': description, 'coverUrl': bookCover, 'authorName': author, 'bookUrl': bookPdf, 'rate': rate, 'no_Pages': numberOfPages, 'version': bookVersion, 'categoryId': categoryId, 'publishing_date': publishingDate.toIso8601String()};
}
