import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(color: Colors.white, fontSize: 24),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      home: const ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Cheetah Coding',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('BUTTON 1'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('BUTTON 2'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: const [
                      Divider(color: Colors.white),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('Dart')),
                      ),
                      Divider(color: Colors.white),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('JavaScript')),
                      ),
                      Divider(color: Colors.white),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('PHP')),
                      ),
                      Divider(color: Colors.white),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('C++')),
                      ),
                      Divider(color: Colors.white),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ListView(
                    children: const [
                      Divider(color: Colors.white),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('Dart')),
                      ),
                      Divider(color: Colors.white),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('JavaScript')),
                      ),
                      Divider(color: Colors.white),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('PHP')),
                      ),
                      Divider(color: Colors.white),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('C++')),
                      ),
                      Divider(color: Colors.white),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  color: Colors.white,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Cheetah Coding',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('BUTTON 1'),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('BUTTON 2'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
