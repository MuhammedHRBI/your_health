import 'package:flutter/material.dart';
import 'package:your_health/screens/appointments.dart';
import 'package:your_health/screens/loading_screen.dart';
import 'package:your_health/screens/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetPages = <Widget>[
    Icon(
      Icons.home_rounded,
    ),
    Icon(
      Icons.calendar_today_rounded,
    ),
    Icon(
      Icons.person_rounded,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedIndex == 0
          ? Navigator.pushReplacementNamed(context, '/home')
          : Navigator.pushNamed(context, '/settings');
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: Colors.blue[800], size: 30),
      selectedItemColor: Colors.blue[800],
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        // BottomNavigationBarItem(icon: Icon(Icons.calendar_today_rounded), label: 'Calendar'),
        BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profile'),
      ],
      currentIndex: _selectedIndex,
      onTap: (_onItemTapped),
      // onTap: (index) {
      //   setState(() {
      //     selectedPage = index;
      //   });
    );
  }
}

  

 






// Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: MaterialButton(
//             onPressed: () {
//               //state = !state;
//               setState(() {
//                 homeState = !homeState;
//                 calendarState = false;
//                 personState = false;
//               });
//               Navigator.pushNamed(context, '/home');
//             },
//             child: Icon(
//               Icons.home_rounded,
//               color: homeState ? Colors.white : Colors.black,
//             ),
//             color: homeState ? Colors.black : Colors.white,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: MaterialButton(
//             onPressed: () {
//               //state = !state;

//               setState(() {
//                 calendarState = !calendarState;
//                 personState = false;
//                 homeState = false;
//               });
//               Navigator.pushNamed(context, '/home');
//             },
//             child: Icon(
//               Icons.calendar_today_rounded,
//               color: calendarState ? Colors.white : Colors.black,
//             ),
//             color: calendarState ? Colors.black : Colors.white,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: MaterialButton(
//             onPressed: () {
//               //state = !state;

//               setState(() {
//                 personState = !personState;
//                 calendarState = false;
//                 homeState = false;
//               });
//               Navigator.pushNamed(context, '/home');
//             },
//             child: Icon(
//               Icons.person_rounded,
//               color: personState ? Colors.white : Colors.black,
//             ),
//             color: personState ? Colors.black : Colors.white,
//           ),
//         )
//       ],
//     );