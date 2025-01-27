import 'package:the_cat_api/domain/entities/catbreed.dart';

abstract class CatbreedDatasource {
  Future<List<CatBreed>> getCatbreeds();

  Future<CatBreed> getCatbreedById(String id);
}
