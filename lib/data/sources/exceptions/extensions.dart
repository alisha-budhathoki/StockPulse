import 'package:stock_pulse/core/constants/network_error_messages.dart';
import 'package:stock_pulse/data/sources/exceptions/exception_handler.dart';

extension AppExceptionExtensions on AppException {
  static AppException fromStatusCode(int? code) {
    switch (code) {
      case 401:
        return AppException(message: NetworkErrorMessages.unauthorized);
      case 500:
      case 502:
      case 503:
        return AppException(message: NetworkErrorMessages.serverDown);
      default:
        return AppException(message: NetworkErrorMessages.generalError);
    }
  }
}
