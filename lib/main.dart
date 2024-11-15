import 'package:flutter/material.dart';
import 'package:tugas_kelompok_minggu7/login.dart';

//Contributed in Programmings:
//Mohammad Usman Asegaf
//Syamsu Nuryaman

//Untuk yang lain belum ada kontribusi meski untuk hal tidak pakai pc seperti mencarikan icons png/svg
//sehingga tidak dicatat, terdapat ss bukti tidak partisipasi

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
  String Biodata = '';
  String LogPembuatan = '';

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

    if (userNameController.text == "Mohammad Usman Asegaf") {
      setState(() {
        Biodata = "Nama:    Mohammad Usman Asegaf\n" +
            "Hobi:    Olahraga\n" +
            "TTL:   Bandung, 5 Juni 2002\n" +
            "Alamat:    Cimahi selatan, Perumnas Gg Nusa Indah 4 No 29\n" +
            "Universitas:   Universitas Teknologi Bandung\n" +
            "Jurusan:   Teknik Informatika\n" +
            "Pengalaman:    SR Offset(Logistik), Remotask(QA, Reviewer)\n";

        LogPembuatan = "Log Pembuatan oleh Mohammad Usman Asegaf:\n" + // <----
            "- Merancang struktur awal aplikasi.\n" +
            "- Membuat LoginPage.\n" +
            "- Implementasi navigasi menggunakan BottomNavigationBar.\n" +
            "- Menambahkan validasi pada Login Page.\n" +
            "- Menggabungkan kedua pekerjaan apk.\n" +
            "- Menambahkan singleChildScrollView ditiap page\n" +
            "- Penyesuaian views\n" +
            "- Menambahkan komentar pada kode.\n" +
            "- Mengecek kecepatan loading.\n" +
            "- Mengedit gambar dan ikon.\n" +
            "- Menambahkan fitur biodata.\n" +
            "- Penambahan button Logout\n" +
            "- Debugging awal untuk fitur autentikasi.\n"; // <----
      });
    } else if (userNameController.text == "Syamsu Nuryaman") {
      setState(() {
        Biodata = "Nama:    Syamsu Nuryaman\n" +
            "Hobi:    Membaca buku/novel\n" +
            "TTL:   Bandung, 12 April 2003\n" +
            "Alamat:    Bandung, Jl. Dipati Ukur No 23\n" +
            "Universitas:   Universitas Teknologi Bandung\n" +
            "Jurusan:   Teknik Informatika\n" +
            "Pengalaman:    PT Telkom Indonesia\n";

        LogPembuatan = "Log Pembuatan oleh Syamsu Nuryaman:\n" + // <----
            "- Membuat desain HomeScreen.\n" +
            "- Implementasi fitur profil pengguna asset image.\n" +
            "- Implementasi fitur log dengan padding.\n" +
            "- Menambahkan layout biodata.\n" +
            "- Uji coba aplikasi di berbagai perangkat.\n" +
            "- Merapihkan typo\n" +
            "- Melakukan testing halaman login.\n" +
            "- Menambahkan komentar pada kode.\n" +
            "- Debugging tampilan dan layout.\n" +
            "- Menambahkan textStyle.\n" +
            "- Mengatur padding btn logout\n" +
            "- Menambahkan fitur tambahan lainnya.\n";
      });
    }
  }

  List<Widget> _widgetOptions() {
    return [
      Stack(
        children: [
          Center(
            child: SingleChildScrollView(
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
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Hi mates, I am " + userNameController.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      "Status: Exploring the world of Flutter development!", // <----
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                  child: Text('Logout')),
            ),
          )
        ],
      ),
      Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipOval(
                      child: Image.asset(
                        AccountImage,
                        height: 220.0,
                        width: 220.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      Biodata,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 100, // Ukuran foto profil
                      backgroundImage:
                          AssetImage(AccountImage), // Menampilkan foto pengguna
                    ),
                  ),
                  SizedBox(height: 16), // Spasi antara foto dan log
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      LogPembuatan,
                      style: TextStyle(fontSize: 20), // Ukuran teks log
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
        title: Text('Apk Bio dan Log'),
      ),
      body: _widgetOptions().elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Biodata',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logo_dev),
            label: 'Log',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
