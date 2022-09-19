import '../services/general_response.dart';

abstract class UserRepository {
  Future<GeneralResponse> signUp(Map<String, dynamic> data);
}