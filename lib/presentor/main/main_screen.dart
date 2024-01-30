import 'package:flutter/material.dart';
import 'package:orzu_tz/presentor/korzina/korzina_screen.dart';
import 'package:orzu_tz/presentor/profil/profil_screen.dart';
import 'package:orzu_tz/presentor/save/save_screen.dart';
import '../catalog/catalog_screen.dart';
import '../home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  final List<Widget> screens = [
    const HomeScreen(),
    const CatalogScreen(),
    const KorzinaScreen(),
    const SaveScreen(),
    const ProfilScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 2,
        height: 64,
        child: Container(
          height: 46,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[0];
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/home.png",
                        height: 24,
                        width: 24,
                        color: currentTab == 0
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D)),
                    const SizedBox(height: 3),
                    Text(
                      'Главная',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: currentTab == 0
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[1];
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/search.png",
                        height: 24,
                        width: 24,
                        color: currentTab == 1
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D)),
                    const SizedBox(height: 3),
                    Text(
                      'Каталог',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: currentTab == 1
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[2];
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/shopping.png",
                        height: 24,
                        width: 24,
                        color: currentTab == 2
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D)),
                    const SizedBox(height: 3),
                    Text(
                      'Корзина',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: currentTab == 2
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[3];
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/like.png",
                        height: 24,
                        width: 24,
                        color: currentTab == 3
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D)),
                    const SizedBox(height: 3),
                    Text(
                      'Избранное',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: currentTab == 3
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[4];
                    currentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/profil.png",
                        height: 24,
                        width: 24,
                        color: currentTab == 4
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D)),
                    const SizedBox(height: 3),
                    Text(
                      'Профиль',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: currentTab == 4
                            ? const Color(0xFFFF7011)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
