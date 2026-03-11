import 'package:fruit_e_commerce/env/env.dart';

class ApiStrings {
  static const String baseUrl = Env.readifyApiBaseUrl;
  static const String getAllBooksEndPoint = "/Books/GetAll";
  static const String getAllCategoriesEndPoint = "/Categories/GetAll";
  static const String getUserFavouritesEndPoint = "/Favorite/GetMyFavorites";
  static const String addUserFavoriteEndPoint = "/Favorite/AddToFavorite";
  static const String deleteUserFavoriteEndPoint = "/Favorite/DeleteFromFavorite";
  static const String addBookEndPoint = "/Books/Add";
  static const String addCategoryEndPoint = "Categories/AddCategory";
  static const String deleteBookEndPoint = "/Books/Delete";
  static const String deleteCategoryEndPoint = "/Categories/Delete";
  static const String updateCategoryEndPoint = "/Categories/Update";
  static const String updateBookEndPoint = "/Books/Update";
  static const String getAllAuthors = "/Auth/GetAllAuthors";
  static const String aiChatEndPoint = "/get-response/";
  static const String aiSearchEndPoint = "/get-response";
}
