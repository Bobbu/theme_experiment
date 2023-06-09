import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'themes/dark_theme.dart';
import 'themes/light_theme.dart';

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
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'Theme Experiment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  String _dynamicLabel =
      'Don\'t forget to try CMD+SHIFT+A if running in an iOS Simulator';
  TextEditingController dynamicLabelController = TextEditingController();

  void _onDoubleDown() async {
    setState(() {
      _dynamicLabel = '$_dynamicLabel $_dynamicLabel';
    });
  }

  void _onChanged(String val) async {
    setState(() {
      _dynamicLabel = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _dynamicLabel,
                  maxLines: 5,
                  style: GoogleFonts.architectsDaughter(fontSize: 30),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                    onChanged: _onChanged,
                    controller: dynamicLabelController,
                    decoration: InputDecoration(
                      label: const Text('Dynamic text here'),
                      hintText: 'type something here',
                      // border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          dynamicLabelController.clear();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    )),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                  label: const Text('Double down'),
                  onPressed: _onDoubleDown,
                  icon: const Icon(Icons.add)),
              const SizedBox(height: 8),
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
