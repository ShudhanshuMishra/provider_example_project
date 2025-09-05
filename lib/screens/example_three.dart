import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/example_three_provider.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  @override
  Widget build(BuildContext context) {
    print('build');
    ///final exampleProvider = Provider.of<ExampleThreeProvider>(context,listen: false); //not in used because we use consumer widget
    return Scaffold(
      appBar: AppBar(
        title: Text('Item ListView'),
      ),
      body: ListView.builder(
        itemCount: 1000,
          itemBuilder:(context,index){
          return Consumer<ExampleThreeProvider>(builder: (context,value,child){
            return ListTile(
                onTap: (){
                  if(value.selectedItem.contains(index)){
                    value.removeItem(index);
                  }else {
                      value.setItem(index);
                  }
                },
                title: Text('item'+index.toString()),
                trailing: value.selectedItem.contains(index) ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined)
            );
          });
          }),
    );
  }
}
