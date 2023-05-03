abstract class AccountNameRepository {
  Future<void> saveAccountName(String uid, String name, String surn);
  Future<String?> getUserId();
}
