import 'package:fruit_e_commerce/features/category/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel({required super.categoryId, required super.name, required super.imageUrl});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(categoryId: json['id'], name: json["name"], imageUrl: json["categoryPictureUrl"]);

  Map<String, dynamic> toJson() => {"id": categoryId, "name": name, "categoryPictureUrl": imageUrl};
}
