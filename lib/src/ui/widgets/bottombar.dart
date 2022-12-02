import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wouflove/src/constants.dart';
import 'package:wouflove/src/theme.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  //Used to define the selected item in the bottombar
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        icon: icon("assets/home.svg"),
        activeIcon: activeIcon("assets/home.svg"),
        label: "Accueil",
      ),
      BottomNavigationBarItem(
        icon: icon("assets/magnifier.svg"),
        activeIcon: activeIcon("assets/magnifier.svg"),
        label: "Recherche",
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: XSMALL_CONTAINER_SIZE,
          height: XSMALL_CONTAINER_SIZE,
        ),
        label: "Wouflist",
      ),
      BottomNavigationBarItem(
        icon: icon("assets/comment.svg"),
        activeIcon: activeIcon("assets/comment.svg"),
        label: "Messages",
      ),
      BottomNavigationBarItem(
        icon: icon("assets/profile.svg"),
        activeIcon: activeIcon("assets/profile.svg"),
        label: "Profil",
      ),
    ];

    return BottomNavigationBar(
      items: items,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      backgroundColor: WoufTheme.black,
      unselectedItemColor: WoufTheme.white,
      selectedItemColor: WoufTheme.white,
      showUnselectedLabels: true,
      onTap: (index) => setState(() {
        currentIndex = index;
      }),
    );
  }

  Widget icon(String picture) {
    return SvgPicture.asset(
      picture,
      width: XSMALL_CONTAINER_SIZE,
      height: XSMALL_CONTAINER_SIZE,
    );
  }

  Widget activeIcon(String picture) {
    return SvgPicture.asset(
      picture,
      color: WoufTheme.primary,
      width: XSMALL_CONTAINER_SIZE,
      height: XSMALL_CONTAINER_SIZE,
    );
  }
}
