import 'package:bloc_with_multiple_states/bloc/switch_bloc.dart';
import 'package:bloc_with_multiple_states/switch-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SwitchBloc(),
        child: MaterialApp(
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true),
            debugShowCheckedModeBanner: false,
            home: const SwitchScreen()));
  }
}
