import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/account/presentation/views/account_view.dart';
import 'package:clinic_engine_task/modules/ask_your_doctor/presentation/views/ask_your_doctor_view.dart';
import 'package:clinic_engine_task/modules/categories/presentation/views/categories_view.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/home_view.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/stay_healthy_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> _pages = [];
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = const [
      HomeView(),
      CategoriesView(),
      StayHealthyView(),
      AskYourDoctorView(),
      AccountView(),
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomAppBar(
          padding: EdgeInsets.zero,
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 0.8,
          //  clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            elevation: 0,
            onTap: _selectPage,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            unselectedItemColor: Colors.black,
            selectedItemColor: primaryColor,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            currentIndex: _selectedPageIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.house,
                  size: 22,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.briefcase,
                  size: 22,
                ),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                activeIcon: null,
                icon: Icon(null),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.commentDots,
                  size: 22,
                ),
                label: 'Ask your doctor',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 22,
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          hoverElevation: 0,
          backgroundColor: Colors.green,
          // splashColor: Colors.transparent,
          // tooltip: 'Explore',
          elevation: 0,
          child: const Icon(
            FontAwesomeIcons.stethoscope,
            size: 22,
            color: Colors.white,
          ),
          onPressed: () => setState(() {
            _selectedPageIndex = 2;
          }),
        ),
      ),
      body: Stack(
        children: [
          _pages[_selectedPageIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70, // Height of the BottomNavigationBar
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
