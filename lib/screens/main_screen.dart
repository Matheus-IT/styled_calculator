import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ));
  }
}
