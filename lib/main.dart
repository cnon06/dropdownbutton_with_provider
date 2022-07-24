import 'package:flutter/material.dart';
import 'package:flutter_application_14/counter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<Counter>(
          create: (context) => Counter(), child: const MyHomePage()),
    );
  }
}

class  MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter value: ${counter.value}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<Counter>(
              builder: (_, value, __) => Text("Counter value: ${counter.value}",
              ),
              ),
            TextButton(
                onPressed: () {
                  counter.increment();
                },
                child: const Text("Increase")),
          ],
        ),
      ),
    );
  }
}
