import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<{{name.pascalCase()}}Cubit>(
      create: (_) => {{name.pascalCase()}}Cubit(),
      child: const _{{name.pascalCase()}}Body(),
    );
  }
}

class _{{name.pascalCase()}}Body extends StatelessWidget {
  const _{{name.pascalCase()}}Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}