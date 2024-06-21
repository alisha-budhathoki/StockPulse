// services/exceptions.dart

class AppException implements Exception {
  AppException({required this.message, this.code});

  final String message;
  final int? code;

  @override
  String toString() => 'AppException: $message (code: $code)';
}
