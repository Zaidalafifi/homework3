import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({super.key});

  @override
  State<Arithmetic> createState() => _Arithmetic();
}

class _Arithmetic extends State<Arithmetic> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${date.day}/${date.month}/${date.year}',
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('select adate', style: TextStyle(fontSize: 20)),
            onPressed: (() {
              showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100));
            }),
          )
        ],
      )),
    );
  }
}
