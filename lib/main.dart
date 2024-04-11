import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mostrar Imagenes"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 250.0,
                  width: 450.0,
                  child: Image.asset("assets/buho.jpg", fit: BoxFit.fitWidth),
                ),
                SizedBox(
                    height: 250.0,
                    width: 450.0,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2017/08/07/18/57/dog-2606759_640.jpg',
                      fit: BoxFit.fitWidth,
                    ))
              ]),
        ),
      ),
    );
  }
}
