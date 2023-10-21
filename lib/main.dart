import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sum_app/Style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sum App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sum = 0;
  Map<String,double> formValue = {'num1':0,'num2':0};
  final TextEditingController _controller1 = new TextEditingController();
  final TextEditingController _controller2 = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    updateFormValue(inputKey,inputValue){
     setState(() {
       formValue.update(inputKey, (value) => double.parse(inputValue));
     });
    }

    addAllNumber(){
   setState(() {
     sum = formValue['num1']!+formValue['num2']!;
   });
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('Sum App'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sum = ${sum.toString()}',
              style: headerTextStyle(),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _controller1,
              onChanged: (value){
                updateFormValue('num1', value);
              },
              decoration: appInputDecoration('First Number'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _controller2,
              onChanged: (value){
                updateFormValue('num2', value);
              },
              decoration: appInputDecoration('Second Number'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            sum = 0;
                            _controller1.clear();
                            _controller2.clear();
                          });
                        },
                        child: Text('All Clear'),
                        style: clearButtonStyle())),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        addAllNumber();
                      },
                      child: Text('Sum'),
                      style: sumButtonStyle(),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
