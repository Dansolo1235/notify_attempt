import 'package:flutter/material.dart';
import 'package:notify_attempt/change_notifier.dart';
import 'package:provider/provider.dart';

class Child extends StatelessWidget {
  const Child({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Consumer<CounterState>(
              builder: (context, state, child) => Text(
                'child counter: ${state.childCounter}', // Access state
                style: const TextStyle(fontSize: 24),
              ),
            ), 
        ElevatedButton(onPressed: (){
       context.read<CounterState>().incrementParent();
        }, child: const Text("Increment Parent"))
      ],
    );
  }
}