abstract class SessionRepository {
  Future<String?> getUserId();
  Future<bool> checkSession();
  Future<void> logout();
}
