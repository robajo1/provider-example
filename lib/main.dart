// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try_provider/provider.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => nameprovider(),
        )
      ],
      child: const MaterialApp(
        home: demo(),
      ),
    );
  }
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<nameprovider>().increase();
            },
            heroTag: null,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<nameprovider>().decrease();
            },
            heroTag: null,
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text("home"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          context.watch<nameprovider>().num.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
