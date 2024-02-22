import 'package:bloc_with_multiple_states/bloc/switch_bloc.dart';
import 'package:bloc_with_multiple_states/bloc/switch_event.dart';
import 'package:bloc_with_multiple_states/bloc/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch State using Bloc"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Notification'),
                  BlocBuilder<SwitchBloc, switchStates>(
                    builder: (context, state) {
                      return Switch(
                        value: state.isSwitch,
                        onChanged: (value) {
                          context
                              .read<SwitchBloc>()
                              .add(EnableorDisableNotification());
                        },
                      );
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              BlocBuilder<SwitchBloc, switchStates>(
                builder: (context, state) {
                  return Container(
                    height: 200,
                    color: Colors.red.withOpacity(state.slider),
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
              BlocBuilder<SwitchBloc, switchStates>(
                builder: (context, state) {
                  return Slider(
                    value: state.slider,
                    onChanged: (value) {
                      context
                          .read<SwitchBloc>()
                          .add(SliderEvent(slider: value));
                    },
                  );
                },
              ),
            ],
          )),
    );
  }
}
