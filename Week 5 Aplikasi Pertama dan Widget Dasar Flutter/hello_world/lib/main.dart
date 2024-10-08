import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/fab_widget.dart';
import 'basic_widgets/input_widget.dart';
import 'basic_widgets/datetime_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounterBy10() {
    setState(() {
      _counter += 10;
    });
  }

  void _showDialog() {
    showAlertDialog(context); // Call the dialog widget method
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20), // Add some space
              const CupertinoActivityIndicator(), // Add Cupertino loading indicator
              const SizedBox(height: 20), // Add some space
              ElevatedButton(
                onPressed: _showDialog, // Trigger the dialog
                child: const Text("Show Dialog"),
              ),
              const SizedBox(height: 20), // Add some space
              Container(
                width: 300, // Set the desired width
                child: const MyInputWidget(), // Use the custom input widget
              ),
              const SizedBox(height: 20), // Add some space
              const MyDatePicker(
                  title: 'Pilih Tanggal'), // Use the custom date picker widget
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment Counter',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10), // Add some space between the buttons
          MyFABWidget(
              onPressed:
                  _incrementCounterBy10), // Use the custom FAB widget with callback
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
