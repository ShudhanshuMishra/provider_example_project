import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/example_two_provider.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleTwoProvider>(builder:(context,value,child){
            print('only this build');
            return Slider(
                min: 0,
                max: 1,
                value: value.value, onChanged: (val){
              value.setValue(val);
            });
          }),
          Consumer<ExampleTwoProvider>(builder: (context,value,child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value),
                      ),
                      child: Center(
                        child: Text('container1'),
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value),
                      ),
                      child: Center(child: Text('container2'),)
                  ),
                ),

              ],
            );
          })

        ],
      ),
    );
  }
}
