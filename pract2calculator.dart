import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? num1 = 0, num2 = 0, result = 0;

  add() {
    setState(() {
      num1 = int.tryParse(controller1.text);
      num2 = int.tryParse(controller2.text);
      result = (num1 ?? 0) + (num2 ?? 0);
    });
  }

  sub() {
    setState(() {
      num1 = int.tryParse(controller1.text);
      num2 = int.tryParse(controller2.text);
      result = (num1 ?? 0) - (num2 ?? 0);
    });
  }

  mul() {
    setState(() {
      num1 = int.tryParse(controller1.text);
      num2 = int.tryParse(controller2.text);
      result = (num1 ?? 0) * (num2 ?? 0);
    });
  }

  div() {
    setState(() {
      num1 = int.tryParse(controller1.text);
      num2 = int.tryParse(controller2.text);
      if (num2 == 0) {
        result = null; // handle division by zero
      } else {
        result = (num1 ?? 0) ~/ (num2 ?? 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              result == null ? 'Error: Division by zero' : 'Result is: $result',
              style: TextStyle(fontSize: 20, color: Colors.blue.shade700),
            ),
            SizedBox(height: 15),
            TextField(
              controller: controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: add, child: Text('ADD')),
                ElevatedButton(onPressed: sub, child: Text('SUB')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: mul, child: Text('MUL')),
                ElevatedButton(onPressed: div, child: Text('DIV')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
