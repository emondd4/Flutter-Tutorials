import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../Store/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final counter = Counter(); // Instantiate the store

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobx Basic"),centerTitle: true,),
      body: Column(
        children: [
          Expanded(child: Center(child: Observer(builder: (_) => Text('${counter.value}', style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal),)))),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(onPressed: (){ counter.increment(); }, child: const Icon(Icons.add),),
              )
            ],
          )
        ],
      ),
    );
  }
}
