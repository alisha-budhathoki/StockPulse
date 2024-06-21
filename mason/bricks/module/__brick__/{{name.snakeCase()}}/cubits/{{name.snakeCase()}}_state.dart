part of '{{name.snakeCase()}}_cubit.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.loading() = {{name.pascalCase()}}Loading;

  const factory {{name.pascalCase()}}State.empty({
    required String message,
  }) = {{name.pascalCase()}}Empty;

  const factory {{name.pascalCase()}}State.error({
    required String message,
  }) = {{name.pascalCase()}}Error;

  const factory {{name.pascalCase()}}State.loaded() = {{name.pascalCase()}}Loaded;
}
