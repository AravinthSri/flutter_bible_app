import 'package:bible_app/core/network/network_exception.dart';
import 'package:dio/dio.dart';

class DioExceptionMapper {
  static NetworkException mapToNetworkException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException('Receive timeout', null);
      case DioExceptionType.connectionError:
        return NetworkException('No internet connection', null);  
      case DioExceptionType.badCertificate:
        return NetworkException(
          'Secure connection failed',
          null,
        );  
      case DioExceptionType.badResponse:
        return NetworkException(
          _getServerMessage(exception),
          exception.response?.statusCode,
        );
      case DioExceptionType.cancel:
        return NetworkException('Request cancelled', null);
      case DioExceptionType.unknown:
      default:
        return NetworkException('Unknown error occurred', null);
    }
  }

  static String _getServerMessage(DioException exception) {
    final data = exception.response?.data;

    if (data is Map<String, dynamic>) {
      final message = data['message'];

      if (message is String && message.isNotEmpty) {
        return message;
      }
    }

    return 'Server error occurred';
  }
}