import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int hisob = 0;
  String zikr = "Subhanalloh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Assets/Tasbeh.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "Zikrlar soni:",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Text(
                  hisob.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        hisob++;
                        if (hisob == 33) {
                          zikr = "Alhamdulloh";
                        } else if (hisob == 66) {
                          zikr = "Allohu Akbar";
                        } else if (hisob == 99) {
                          zikr = "Subhanalloh";
                          hisob = 0;
                        }
                      },
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * .8,
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        zikr,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.amber,
                        Color.fromARGB(255, 9, 195, 9)
                      ]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
