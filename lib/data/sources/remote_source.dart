abstract class RemoteSource {
  ///return map of data when success and throws [ServerException]
  ///with status code and message in any failure
  Future<Map<String, dynamic>> get(
    String url, {
    Map<String, dynamic> queryParam,
  });

  ///return map of data when success and throws [ServerException]
  /// with status code and message in any failure
  Future<Map<String, dynamic>> post(
    String url, {
    Map<String, dynamic> queryParam,
    Map<String, dynamic> body,
  });
}
