import '../repositories/user_repository.dart';
import '../services/api_endpoints.dart';
import '../services/general_response.dart';
import '../services/http_service.dart';

class UserRepositoryImplementation extends HttpApiService
    implements UserRepository {
  @override
  Future<GeneralResponse> signUp(Map<String, dynamic> data) async {
    var response = await post(ApiEndPoints.userSignUp, data: data);
    return GeneralResponse.fromJson(response);
  }
}
