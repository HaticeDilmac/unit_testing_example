import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void addIncrement() {
    setState(() {
      counter++;
    });
  }

  void removeIncrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    key: const Key('deIncrementButton'),
                    onPressed: () {
                      removeIncrement();
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 30,
                    )),
                Text(
                  counter.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
                IconButton(
                    key: const Key('incrementButton'),
                    onPressed: () {
                      addIncrement();
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                    ))
              ],
            ),
          ),
          TextButton(
              key: const Key('resetButton'),
              onPressed: () {},
              child: const Text(
                'Sıfırla',
                style: TextStyle(fontSize: 20),
              )),
        ],
      ),
    );
  }
}
