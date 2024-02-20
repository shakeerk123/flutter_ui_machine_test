import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.amber,
                height: size.height * 0.4,
              ),
              Container(
                color: Colors.red,
                height: size.height * 0.6,
              ),
            ],
          ),
          Positioned(top: size.width*0.4,
          right: 40,
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Container(child:Column(
                children: [
                  SecondaryTabbar(),
                ],
              ) ,
                width: size.width * 0.8,
                height: size.height * 0.4,
                color: Colors.white,
                // You can customize the size and position of the white container here
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondaryTabbar extends StatefulWidget {
  const SecondaryTabbar({Key? key}) : super(key: key);

  @override
  _SecondaryTabbarState createState() => _SecondaryTabbarState();
}

class _SecondaryTabbarState extends State<SecondaryTabbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
      child: ClipRRect(borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 65,
          color:  Colors.grey.shade100,
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Container(
                    color: _selectedIndex == 0 ? const Color(0xFF00BAAB) : Colors.transparent,
                    child: Center(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    color: _selectedIndex == 1 ? const Color(0xFF00BAAB) : Colors.transparent,
                    child: Center(
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  child: Container(
                    color: _selectedIndex == 2 ? const Color(0xFF00BAAB) : Colors.transparent,
                    child: Center(
                      child: Text(
                        'About',
                        style: TextStyle(
                          color: _selectedIndex == 2 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}