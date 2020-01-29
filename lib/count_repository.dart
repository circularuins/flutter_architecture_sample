class CountRepository {
  Future<int> fetch() {
    return Future<int>.delayed(const Duration(seconds: 1)).then((_) {
      return 1;
    });
  }
}
