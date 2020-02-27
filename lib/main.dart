import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stepper App",
      theme: new ThemeData(
        primarySwatch: Colors.amber
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _current_step = 0;
  List<Step> _mystep = [
    
    new Step(
      title: new Text("Step 1"),
      content: new Text("Some Contain 1"),
      isActive: true,

    ),

    new Step(
        title: new Text("Step 2"),
        content: new Text("Some Contain 2"),
        isActive: true
    ),

    new Step(
        title: new Text("Step 3"),
        content: new Text("Some Contain 3"),
        isActive: true
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Stepper App"),
      ),

      body: new Container(
        child: new Stepper(
          steps: _mystep,
          currentStep: _current_step,
          type: StepperType.vertical,
          onStepContinue: (){
            setState(() {
              if(_current_step <= 1) {
                _current_step = _current_step + 1;
              }
            });
          },
          onStepCancel: (){
            setState(() {
              if(_current_step >= 1) {
                _current_step = _current_step - 1;
              }
            });
          },
        ),
      ),
    );
  }
}
