import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Snackbar v2 Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Dialog"),
          onPressed: () {
            showDialog(
              useSafeArea: false,
              context: context,
              builder: (context) => Stack(
                children: [
                  const IgnorePointer(
                    child: Scaffold(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SafeArea(
                    child: AlertDialog(
                      title: const Text("SnackBar Dialog"),
                      content: ElevatedButton(
                        child: const Text("Show SnackBar"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Hello, SnackBar!"),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
