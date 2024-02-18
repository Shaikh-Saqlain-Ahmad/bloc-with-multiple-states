import 'package:flutter/material.dart';

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
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                color: Colors.red.withOpacity(.2),
              ),
              const SizedBox(
                height: 50,
              ),
              Slider(
                value: .4,
                onChanged: (value) {},
              )
            ],
          )),
    );
  }
}
