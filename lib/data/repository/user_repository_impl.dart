import '../../domain/model/user.dart';
import '../../domain/repository/user_repository.dart';
import '../dto/user_dto.dart';
import '../service/api_service.dart';

class UserRepositoryImpl implements UserRepository {
  final ApiService apiService;

  UserRepositoryImpl(this.apiService);

  @override
  Future<List<User>> getAllUsers() async {
    List<UserDto> userDTOs = await apiService.getAll();
    return userDTOs.map((userDTO) => userDTO.toDomain()).toList();
  }
}