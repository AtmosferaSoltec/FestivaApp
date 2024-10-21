import 'package:festiva_flutter/data/dto/discoteca_dto.dart';
import 'package:festiva_flutter/data/service/discoteca_service.dart';
import 'package:festiva_flutter/domain/model/discoteca.dart';
import 'package:festiva_flutter/domain/repository/discoteca_repository.dart';

class DiscotecaRepositoryImpl implements DiscotecaRepository {
  final DiscotecaService apiService;
  DiscotecaRepositoryImpl(this.apiService);

  @override
  Future<List<Discoteca>> getAll() async {
    List<DiscotecaDto> list = await apiService.getAll();
    return list.map((dto) => dto.toDomain()).toList();
  }
}
