import 'package:festiva_flutter/data/dto/categoria_dto.dart';
import 'package:festiva_flutter/domain/model/categoria.dart';
import 'package:festiva_flutter/domain/repository/categoria_repository.dart';
import '../service/api_service.dart';

class CategoriaRepositoryImpl implements CategoriaRepository {
  final ApiService apiService;
  CategoriaRepositoryImpl(this.apiService);

  @override
  Future<List<Categoria>> getAll() async {
    List<CategoriaDto> list = await apiService.getAllCategorias();
    return list.map((dto) => dto.toDomain()).toList();
  }
}
