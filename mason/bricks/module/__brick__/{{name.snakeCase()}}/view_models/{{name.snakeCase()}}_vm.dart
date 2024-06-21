import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_vm.freezed.dart';

@freezed
class {{name.pascalCase()}}VM with _${{name.pascalCase()}}VM {
  const factory {{name.pascalCase()}}VM({
  }) = _{{name.pascalCase()}}VM;
}