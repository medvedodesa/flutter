import 'package:flutter/material.dart';
import 'package:untitled3/pages/pony_list_page.dart';

// StatefulWidget имеет состояние, с которым
// позже мы будем работать через функцию
// setState(VoidCallback fn);
// обратите внимание setState принимает другую функцию
class HomePage extends StatefulWidget {
  // StatefulWidget должен возвращать класс,
  // которые наследуется от State
  @override
  _HomePageState createState() => _HomePageState();
}

// В треугольных скобках мы указываем наш StatefulWidget
// для которого будет создано состояние
// нижнее подчеркивание _ используется для того,
// чтобы скрыть доступ к _HomePageState  из других файлов
// нижнее подчеркивание аналогия private в Java / Kotlin
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // виджет MaterialApp - главный виджет приложения, который
    // позволяет настроить тему и использовать
    // Material Design для разработки.
    return MaterialApp(
      // заголовок приложения
      // обычно виден, когда мы сворачиваем приложение
      title: 'Json Placeholder App',
      // убираем баннер
      debugShowCheckedModeBanner: false,
      // настройка темы, мы ещё вернёмся к этому
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // теперь у нас домашная страница - PonyListPage
      home: PonyListPage(),
    );
  }
}

  // функция buil, как мы уже отметили, строит
  // иерархию наших любимых виджетов
//   @override
//   Widget build(BuildContext context) {
//     // В большинстве случаев Scaffold используется,
//     // как корневой виджет для страницы или экрана
//     // Scaffold позволяет вам указать AppBar, BottomNavigationBar,
//     // Drawer, FloatingActionButton и другие не менее важные
//     // компоненты (виджеты).
//     return Scaffold(
//       // мы создаем AppBar с текстом "Home Page"
//         appBar: AppBar(title: Text("Order Out")),
//         // указываем текст в качестве тела Scaffold
//         // текст предварительно вложен в Center виджет,
//         // чтобы выровнять его по центру
//         body: Center(
//             child: IconButton(
//               icon: Image.asset('assets/images/pinkhellokitty.jpg'),
//               iconSize: 80,
//               onPressed: () {},
//             )
//         )
//     );
//   }
//
// }