import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         /*   Text(
              'Гришанович Олег Андреевич \n ИКБО-11-22 \n 22И0802',
              key: const ValueKey('studentInfo'),
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
              strutStyle: const StrutStyle(
                fontSize: 22.0,
                height: 1.4,
                leading: 0.5,
                forceStrutHeight: false,
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              locale: const Locale('ru', 'RU'),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              textScaler: TextScaler.linear(1.0),
              maxLines: 3,
              semanticsLabel: 'ФИО студента, группа и шифр специальности',
              textWidthBasis: TextWidthBasis.parent,
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToFirstAscent: true,
                applyHeightToLastDescent: true,
              ),
              selectionColor: Colors.yellowAccent
            ),*/
            /*
            ElevatedButton(
              key: const ValueKey('my_button'),
              onPressed: () {
                print('Button pressed!');
              },
              onLongPress: () {
                print('Long press!');
              },
              onHover: (isHovering) {
                print('Hover: $isHovering');
              },
              onFocusChange: (isFocused) {
                print('Focus: $isFocused');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              ),
              focusNode: FocusNode(),
              autofocus: false,
              clipBehavior: Clip.antiAlias,
              statesController: MaterialStatesController(),
              child: const Text('Нажми меня'),
            )
*/
          ],
        ),
      ),
    );
  }
}

