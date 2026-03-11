import 'package:dio/dio.dart';
import 'package:fruit_e_commerce/core/constants/api_strings.dart';
import 'package:fruit_e_commerce/core/error/exeptions.dart';

import 'package:fruit_e_commerce/core/models/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookModel>> getAllBooks();
}

class HomeRemoteDataSourceImplWithDio extends HomeRemoteDataSource {
  Dio dio;
  HomeRemoteDataSourceImplWithDio({
    required this.dio,
  });

  @override
 @override
Future<List<BookModel>> getAllBooks() async {
  Response response = await dio.get(ApiStrings.getAllBooksEndPoint);
  
  if (response.statusCode == 200) {
    // 1. Get the raw list
    List responseData = response.data[r"$values"] as List;

    // 2. Filter: Only keep items that have the "id" key 
    // This removes the {"$ref": "..."} items automatically
    List<BookModel> books = responseData
        .where((item) => item is Map && item.containsKey('id')) 
        .map((jsonBookModel) => BookModel.fromJson(jsonBookModel))
        .toList();

    if (books.isEmpty) {
      throw NoDataException();
    }
    
    return books;
  } else {
    throw ServerException();
  }
}
}
