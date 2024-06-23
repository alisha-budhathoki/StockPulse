import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stock_pulse/data/sources/exceptions/exception_handler.dart';
import 'package:stock_pulse/data/sources/remote_source_impl.dart';

import 'mock_dio.mocks.dart';

void main() {
  late RemoteSourceImpl remoteSource;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    remoteSource = RemoteSourceImpl(dio: mockDio);
  });

  group('RemoteSourceImpl', () {
    test('get returns data if the response is successful', () async {
      final responseData = {'key': 'value'};
      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: responseData,
          statusCode: 200,
        ),
      );

      final result = await remoteSource.get('/path');

      expect(result, responseData);
      verify(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('get throws AppException on DioException', () async {
      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenThrow(
        DioException(
            requestOptions: RequestOptions(path: ''),
            type: DioExceptionType.sendTimeout),
      );

      expect(remoteSource.get('/path'), throwsA(isA<AppException>()));
      verify(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('post returns data if the response is successful', () async {
      final responseData = {'key': 'value'};
      when(mockDio.post(any,
              queryParameters: anyNamed('queryParameters'),
              data: anyNamed('data')))
          .thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: responseData,
          statusCode: 200,
        ),
      );

      final result = await remoteSource.post('/path');

      expect(result, responseData);
      verify(mockDio.post(any,
              queryParameters: anyNamed('queryParameters'),
              data: anyNamed('data')))
          .called(1);
    });

    test('post throws AppException on DioException', () async {
      when(mockDio.post(any,
              queryParameters: anyNamed('queryParameters'),
              data: anyNamed('data')))
          .thenThrow(
        DioException(
            requestOptions: RequestOptions(path: ''),
            type: DioExceptionType.receiveTimeout),
      );

      expect(remoteSource.post('/path'), throwsA(isA<AppException>()));
      verify(mockDio.post(any,
              queryParameters: anyNamed('queryParameters'),
              data: anyNamed('data')))
          .called(1);
    });
  });
}
