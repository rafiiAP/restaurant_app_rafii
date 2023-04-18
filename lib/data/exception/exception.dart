class ResponseException implements Exception {
  String message;
  ResponseException({required this.message});
}

/// JIKA ERROR MERUPAKAN DALAM LINGKUP SERVER
class ServerException implements Exception {
  String message;
  ServerException({required this.message});
}
