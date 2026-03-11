import 'package:dio/dio.dart';
import 'package:fruit_e_commerce/core/constants/api_strings.dart';
import 'package:fruit_e_commerce/core/error/exeptions.dart';
import 'package:fruit_e_commerce/core/models/book_model.dart';

import 'package:fruit_e_commerce/features/category/data/models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getAllCategories();
  Future<List<BookModel>> getCategoryBooks(String categoryId);
}

class CategoryRemoteDataSourceImplWithDio extends CategoryRemoteDataSource {
  Dio dio;
  CategoryRemoteDataSourceImplWithDio({
    required this.dio,
  });
  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final Response response = await dio.get(ApiStrings.getAllCategoriesEndPoint);
    List<CategoryModel> categories;
    if (response.statusCode == 200) {
      List responseData = response.data[r"$values"] as List;
      categories = responseData.map((jsonCategoryModel) => CategoryModel.fromJson(jsonCategoryModel)).toList();
      if (categories.isEmpty) {
        throw NoDataException();
      }
      return categories;
    } else {
      throw ServerException();
    }
  }

  @override
Future<List<BookModel>> getCategoryBooks(String categoryId) async {
  final Response response = await dio.get(
    "/Categories/$categoryId/books",
  );

  if (response.statusCode == 200) {
    // 1. Extract the list from the $values key
    List responseData = response.data[r"$values"] as List;

    // 2. Filter: Only keep items that have the "id" key
    // This removes the items that are just references like {"$ref": "..."}
    List<BookModel> categoryBooks = responseData
        .where((item) => item is Map && item.containsKey('id')) 
        .map((categoryBooksJsonModel) => BookModel.fromJson(categoryBooksJsonModel))
        .toList();

    // 3. Check if we have any actual books left after filtering
    if (categoryBooks.isEmpty) {
      throw NoDataException();
    }
    
    return categoryBooks;
  } else {
    throw ServerException();
  }
}
}
