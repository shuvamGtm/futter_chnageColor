import 'package:flutter/material.dart';

///function inside a class is simply called Method
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color chnageColor = Colors.red;
  bool oldColor = false;
  void stateChange() {
    if (oldColor == true) {
      chnageColor = Colors.red;
      oldColor = false;
    } else {
      chnageColor = Colors.green;
      oldColor = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shuvam's UI"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'I changed my color.',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: chnageColor),
              ),
              ElevatedButton(
                  onPressed: () {
                    stateChange(); //method call
                  },
                  child: Text('Click Me'))
            ],
          ),
        ),
      ),
    );
  }
}
