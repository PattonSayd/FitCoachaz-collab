abstract class KeyValueStore {
  Future<bool> contains(TypeStoreKey typedStoreKey);

  Future<bool> init();

  Future<bool> get isInit async => await init() == true;

  Future<T?> read<T>(TypeStoreKey<T> typedStoreKey);

  Future<void> write<T>(TypeStoreKey<T> typedStoreKey, T? value);
}

class TypeStoreKey<T> {
  final type = T;
  final String key;

  TypeStoreKey(this.key);

  @override
  String toString() => 'TypeStoreKey(key: $key)';
}
