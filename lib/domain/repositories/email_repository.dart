abstract class EmailRepository {
  Future<void> saveEmail(String uid, String email);
  Future<String?> getUserId();
}
