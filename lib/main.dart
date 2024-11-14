import 'package:flutter/material.dart';
import 'package:tugas_kelompok_minggu7/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      //for testing
      // home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  String AccountImage = '';

  @override
  void initState() {
    super.initState();

    if (userNameController.text == "Mohammad Usman Asegaf") {
      setState(() {
        AccountImage = 'assets/Usman.jpg';
      });
    } else if (userNameController.text == "Syamsu Nuryaman") {
      setState(() {
        AccountImage = 'assets/Syamsu.jpg';
      });
    }
  }

  List<Widget> _widgetOptions() {
    return [
      Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Foto profil sederhana
                CircleAvatar(
                  radius: 100, // Ukuran foto
                  backgroundImage: AssetImage(
                      AccountImage), // Ganti dengan path gambar lokal
                ),
                SizedBox(height: 16), // Spasi antara foto dan nama
                // Nama pengguna
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Hi mates, I am " + userNameController.text,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      Center(
        child: Text(
          'Search',
          style: TextStyle(fontSize: 24),
        ),
      ),
      Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 24),
        ),
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Demo'),
      ),
      body: _widgetOptions().elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
