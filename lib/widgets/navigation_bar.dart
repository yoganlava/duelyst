import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:japan_driving_app/routes/definitions.dart';
import 'package:japan_driving_app/utils/theme_colors.dart';

class NavigationBar extends StatelessWidget {
  Routes currentRoute;
  final ValueChanged<Routes> onSelect;

  NavigationBar(
      {super.key, required this.currentRoute, required this.onSelect});

  static const List<BottomNavigationBarItem> _routes = [
    BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ""),
    // TODO: Change icon when bothered
    BottomNavigationBarItem(icon: Icon(Icons.fire_truck), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "")
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _routes,
      currentIndex: currentRoute.index,
      onTap: (int index) => onSelect(Routes.values[index]),
      selectedItemColor: ThemeColors.lightDark.color,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    );
  }
}

// class NavigationBar extends StatefulWidget {
//   Function setRoute;

//   NavigationBar({super.key, required this.setRoute});

//   @override
//   State<NavigationBar> createState() =>
//       _NavigationBarState(setRoute: this.setRoute);
// }

// class _NavigationBarState extends State<NavigationBar> {
//   final key = GlobalKey();

//   Function setRoute;

//   _NavigationBarState({required this.setRoute});

//   int _currentIndex = 0;

//   int getCurrentIndex() => _currentIndex;

//   void _onItemTap(int index) {
//     setState(() {
//       _currentIndex = index;
//       setRoute(index);
//     });
//   }

//   static const List<BottomNavigationBarItem> _routes = [
//     BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ""),
//     // TODO: Change icon when bothered
//     BottomNavigationBarItem(icon: Icon(Icons.fire_truck), label: ""),
//     BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
//     BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
//     BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "")
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: _routes,
//       currentIndex: _currentIndex,
//       onTap: _onItemTap,
//       selectedItemColor: ThemeColors.lightDark.color,
//       unselectedItemColor: Colors.black,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       type: BottomNavigationBarType.fixed,
//     );
//   }
// }
