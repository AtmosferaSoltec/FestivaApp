import 'package:festiva_flutter/domain/model/discoteca.dart';
import 'package:festiva_flutter/domain/repository/discoteca_repository.dart';

class GetAllDiscotecasUsecase {
  final DiscotecaRepository repository;

  GetAllDiscotecasUsecase(this.repository);

  Future<List<Discoteca>> call() {
    return repository.getAll();
  }
}
