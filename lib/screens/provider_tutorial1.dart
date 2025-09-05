import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/count_provider1.dart';

class ProviderTutorial1 extends StatefulWidget {
  const ProviderTutorial1({super.key});

  @override
  State<ProviderTutorial1> createState() => _ProviderTutorial1State();
}

class _ProviderTutorial1State extends State<ProviderTutorial1> {

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false); //use listen false for build only needed part
    return Scaffold(
      appBar: AppBar(
        title: Text("count example"),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context,value,child){
          print('build only this statement');
          return Text(value.count.toString(),style: TextStyle(fontSize: 50),);
        })
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            countProvider.setCount();
          },
        child: Icon(Icons.add),
      ),
    );
  }
}
