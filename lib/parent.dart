import 'package:flutter/material.dart';
import 'package:notify_attempt/change_notifier.dart';
import 'package:notify_attempt/child.dart';
import 'package:provider/provider.dart';
class ParentWidget extends StatelessWidget {
  const ParentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Using Provider"), centerTitle: true,),
      body: 
    Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Consumer<CounterState>(
              builder: (context, state, child) => Text(
                'Parent Conter: ${state.parentCounter}', // Access state
                style: const TextStyle(fontSize: 24),
              ),
            ), 

       ElevatedButton(
        child:const Text("Increment Child"),
        onPressed: (){
       context.read<CounterState>().incrementChild();
//       context.read<CounterState>().counter=100;// Access and update state   
      }),

      const Child(),
      ],
    ))
    );
  }
}