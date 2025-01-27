import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_cat_api/infraestructure/datasources/catapi_datasource.dart';
import 'package:the_cat_api/infraestructure/repositories/catbreed_repository_impl.dart';

final catbreedRepositoryProvider = Provider((ref) {
  return CatbreedRepositoryImpl(CatApiDatasource());
});
