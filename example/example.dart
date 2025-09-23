import 'package:flutter/material.dart';
import 'package:mathx/mathx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController txtHeight = TextEditingController();
  final TextEditingController txtWidth = TextEditingController();
  String result = '';

  //make a instance of MathX
  final mathX = MathX();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Package App')),
      body: Column(
        children: [
          AppTextField(txtWidth, 'Width'),
          AppTextField(txtHeight, 'Height'),
          Padding(padding: EdgeInsets.all(24)),
          ElevatedButton(
            child: Text('Calculate Area'),
            onPressed: () {
              double? width = double.tryParse(txtWidth.text);
              double? height = double.tryParse(txtHeight.text);

              //For Area of Rectangle : string output
              String res = mathX.areaRectangle(width!, height!);

              //For Area of Rectangle : double output
              // double res = mathX.areaRectangleValue(width, height);
              setState(() {
                result = res;
              });
            },
          ),
          Padding(padding: EdgeInsets.all(24)),
          Text(result),
        ],
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const AppTextField(this.controller, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: label),
      ),
    );
  }
}
