import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My task manager'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Stack(
          children: <Widget>[
            Positioned(
             child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Create a task',
              ),
            ),
            ),
            /*Positioned(
              bottom: 5,
              right: 5,
              child: IconButtonAddTask(),
            ),*/
          ],
        ),
      bottomSheet: const Stack(
        children: <Widget> [
          IconButtonAddTask(),
        ],
      ),
    );
  }
}

class IconButtonAddTask extends StatefulWidget {
  const IconButtonAddTask({super.key});
 
  @override
  State<IconButtonAddTask> createState() => _IconButtonAddTaskPressed();
}

class _IconButtonAddTaskPressed extends State<IconButtonAddTask> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //Card(shadowColor: Colors.red,
          //child:
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape:const CircleBorder(),
              padding: const EdgeInsets.all(12),
            ),
            child: const Icon(Icons.add),
            onPressed: () { },
          ),
        //),
      ],
    );
  }
}

