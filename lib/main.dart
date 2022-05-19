import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC calculator',
      theme: ThemeData(
        primaryColor: Color(0xff0a0e21),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('IMC calculator'),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        child: Container(
                          height: double.infinity,
                          child: Text('Hello'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(255, 255, 145, 72),
                        child: Container(
                          height: double.infinity,
                          child: Text('Hello'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(255, 255, 211, 79),
                        child: Container(
                          height: double.infinity,
                          child: Text('Hello'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(255, 255, 235, 175),
                        child: Container(
                          height: double.infinity,
                          child: Text('Hello'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(255, 255, 168, 86),
                        child: Container(
                          height: double.infinity,
                          child: Text('Hello'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              TextButton(onPressed: () {}, child: Text('Calcular'))
            ],
          )),
    );
  }
}
