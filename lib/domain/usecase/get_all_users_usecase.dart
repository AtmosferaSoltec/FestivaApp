import 'package:festiva_flutter/domain/model/user.dart';
import '../repository/user_repository.dart';

class GetAllUsersUsecase {
  final UserRepository repository;

  GetAllUsersUsecase(this.repository);

  Future<List<User>> call() {
    return repository.getAllUsers();
  }
}