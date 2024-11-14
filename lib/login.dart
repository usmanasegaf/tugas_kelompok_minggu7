import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_kelompok_minggu7/mainpage.dart';

final userNameController = TextEditingController();
final passwordController = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Aplikasi Kelompok 5',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration:
                              const InputDecoration(labelText: 'Username'),
                          controller: userNameController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: true,
                          decoration:
                              const InputDecoration(labelText: 'Password'),
                          controller: passwordController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElevatedButton(
                            onPressed: () {
                              print(userNameController.text);
                              if (userNameController.text ==
                                      "Mohammad Usman Asegaf" &&
                                  passwordController.text == "21552011174") {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const MainPage();
                                }));
                              } else if (userNameController.text == "2" &&
                                  passwordController.text == "222") {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const MainPage();
                                }));
                              } else if (userNameController.text == "3" &&
                                  passwordController.text == "333") {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const MainPage();
                                }));
                              } else if (userNameController.text == "4" &&
                                  passwordController.text == "444") {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const MainPage();
                                }));
                              } else if (userNameController.text == "5" &&
                                  passwordController.text == "555") {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const MainPage();
                                }));
                              } else if (userNameController.text == "" ||
                                  passwordController.text == "") {
                                Fluttertoast.showToast(
                                    msg:
                                        "Username / Password Tidak Boleh Kosong",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 2,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              } else
                                (Fluttertoast.showToast(
                                    msg: "Username Tidak Terdaftar",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 2,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0));
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(150, 50)),
                            child: const Text(
                              "Masuk",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
