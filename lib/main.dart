import 'package:flutter/material.dart';
import 'package:tutorial_coach/in_app_tour_targets.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tutorial coach  Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'tutorial coach Home Page'),
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
  final appBarKey = GlobalKey();
  final containerKey = GlobalKey();
  final textKey = GlobalKey();
  final fabKey = GlobalKey();

  late TutorialCoachMark tutorialCoachMark;

  void _initialisetcm() {
    print("initialisation");
    tutorialCoachMark = TutorialCoachMark(
      targets: addSiteTargetsPage(
          appBarKey: appBarKey,
          containerKey: containerKey,
          textKey: textKey,
          fabKey: fabKey),
      colorShadow: Colors.orange,
      paddingFocus: 10,
      hideSkip: false,
      opacityShadow: 0.8,
      textStyleSkip: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      onFinish: () {
        print("completed");
      },
    );
  }

  void _showInAppTour() {
    print("delay start");
    Future.delayed(
      Duration(seconds: 1),
      () {
        print("delay completed");
        tutorialCoachMark.show(context: context);
      },
    );
  }

  @override
  void initState() {
    super.initState();

    _initialisetcm();

    _showInAppTour();
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          key: appBarKey,
        ),
      ),
      body: Center(
        child: Column(
          key: containerKey,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              key: textKey,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: fabKey,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
