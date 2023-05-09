abstract class SessionRepository {
  Future<String?> getUserId();
  Future<bool> checkSession();
}
