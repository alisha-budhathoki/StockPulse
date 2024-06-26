// Mocks generated by Mockito 5.4.4 from annotations
// in stock_pulse/test/presentation/home/stock_bloc/stock_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:stock_pulse/data/models/stock_response.dart' as _i2;
import 'package:stock_pulse/data/services/stock_service.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeStockResponse_0 extends _i1.SmartFake implements _i2.StockResponse {
  _FakeStockResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [StockService].
///
/// See the documentation for Mockito's code generation for more information.
class MockStockService extends _i1.Mock implements _i3.StockService {
  MockStockService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.StockResponse> fetchStocks() => (super.noSuchMethod(
        Invocation.method(
          #fetchStocks,
          [],
        ),
        returnValue: _i4.Future<_i2.StockResponse>.value(_FakeStockResponse_0(
          this,
          Invocation.method(
            #fetchStocks,
            [],
          ),
        )),
      ) as _i4.Future<_i2.StockResponse>);
}
