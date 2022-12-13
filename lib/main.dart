import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bonjour"),
        ),
        body: currentIndex == 0
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amber[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Blablabla"),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[400],
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Click here"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [Text("Txt1"), Text("Txt2")],
                    )
                  ],
                ),
              )
            : SizedBox(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image(
                    image: AssetImage("images/wallpaper.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "Alarme",
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
