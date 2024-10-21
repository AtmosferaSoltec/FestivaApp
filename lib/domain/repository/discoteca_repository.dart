import 'package:festiva_flutter/domain/model/discoteca.dart';

abstract class DiscotecaRepository {
  Future<List<Discoteca>> getAll();
}
