import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Учебное приложение',
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const AssignmentsScreen(),
    const ScheduleScreen(),
    const GradesScreen(),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Учебное приложение')),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Задания'),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Расписание'),
          BottomNavigationBarItem(icon: Icon(Icons.grade), label: 'Оценки'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => const Center(child: Text('Добро пожаловать!', style: TextStyle(fontSize: 18)));
}

class AssignmentsScreen extends StatelessWidget {
  const AssignmentsScreen({super.key});
  @override
  Widget build(BuildContext context) => const Center(child: Text('Ваши задания', style: TextStyle(fontSize: 18)));
}

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});
  @override
  Widget build(BuildContext context) => const Center(child: Text('Расписание', style: TextStyle(fontSize: 18)));
}

class GradesScreen extends StatelessWidget {
  const GradesScreen({super.key});
  @override
  Widget build(BuildContext context) => const Center(child: Text('Оценки', style: TextStyle(fontSize: 18)));
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) => const Center(child: Text('Настройки', style: TextStyle(fontSize: 18)));
}
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
/*
            Column(
              key: const ValueKey('my_column'),
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              verticalDirection: VerticalDirection.down,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                const Text('Первая строка'),
                const Text('Вторая строка'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Кнопка'),
                ),
              ],
            )
*//*
            Row(
              key: const ValueKey('my_row'),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              verticalDirection: VerticalDirection.down,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                const Text('Элемент 1', style: TextStyle(fontSize: 14)),
                const Text('Элемент 2', style: TextStyle(fontSize: 18)),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Кнопка'),
                ),
              ],
            )
*//* dfdfdf
            Container(
              key: const ValueKey('my_container'),
              width: 200.0,
              height: 150.0,
              color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              child: const Text(
                'Пример текста внутри контейнера',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            )
           *//*
            Container(
              key: const ValueKey('my_padded_container'),
              padding: const EdgeInsets.all(16.0),
              color: Colors.blueAccent,
              child: const Text(
                'Текст с отступами внутри контейнера',
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )
*/ /*       Container(
              key: const ValueKey('my_container'),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16.0),
              color: Colors.lightBlueAccent,
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.1)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              width: 250,
              height: 150,
              constraints: const BoxConstraints(
                minWidth: 200,
                maxWidth: 300,
                minHeight: 100,
                maxHeight: 200,
              ),
              margin: const EdgeInsets.all(12.0),
              transform: Matrix4.rotationZ(0.1),
              transformAlignment: Alignment.center,
              clipBehavior: Clip.none,
              child: const Text(
                'Текст внутри контейнера',
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )*/

