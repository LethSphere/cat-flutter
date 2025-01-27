import 'package:the_cat_api/domain/datasources/catbreed_datasource.dart';
import 'package:the_cat_api/domain/entities/catbreed.dart';
import 'package:the_cat_api/domain/repositories/catbreed_repository.dart';

class CatbreedRepositoryImpl extends CatbreedRepository {
  final CatbreedDatasource datasource;

  CatbreedRepositoryImpl(this.datasource);
  @override
  Future<List<CatBreed>> getCatbreeds() {
    return datasource.getCatbreeds();
  }

  @override
  Future<CatBreed> getCatbreedById(String id) {
    return datasource.getCatbreedById(id);
  }
}
