import 'package:flutter/material.dart';

import 'controller/controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

//1 -> controller-> controller.dart | rodar o comando: flutter pub add mobx 
// |rodar o comando: flutter pub add flutter_mobx

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter usando Mobx'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//3 -> | 
  Controller controller = Controller();
  //final _counter = Counter();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
                  builder: (_) => Text(
                        '${controller.counter}',
                        style: const TextStyle(fontSize: 35),
                      ),
                      ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementar,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
