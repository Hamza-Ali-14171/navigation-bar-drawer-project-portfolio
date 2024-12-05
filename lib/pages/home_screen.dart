import 'package:flutter/material.dart';
import 'package:navigation_bar_drawer/pages/abc.dart';
import 'package:navigation_bar_drawer/pages/cool.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int index = 0;
  List<Widget> pages = [
    Abc(),
    Cool(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Main Screen')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'cool')
        ],
      ),
      body: pages[index],
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://marketplace.canva.com/EAFy5pVtLkg/1/0/800w/canva-yellow-gradient-facebook-profile-picture-BRJ37mZFyQk.jpg'),
              ),
              accountName: Text('Hamza'),
              accountEmail: Text('hamzaa85@gmail.com')),
          ListTile(
            leading: Text('${index + 1}'),
            title: Text('Stack Container'),
            onTap: () {
              Navigator.pushNamed(context, Cool.id);
            },
          ),
        ]),
      ),
    );
  }
}
