abstract class KeyValueStore {
  Future<bool> contains(TypeStoreKey typedStoreKey);

  Future<void> init();

  // Future<void> get isInit async => await init();

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
