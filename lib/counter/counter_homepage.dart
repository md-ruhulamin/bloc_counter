import 'package:bloc_counter/counter/bloc_counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_counter/counter/bloc_counter/counter_event.dart';
import 'package:bloc_counter/counter/bloc_counter/counter_state.dart';
import 'package:bloc_counter/switch/switch_homePage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterHomepage extends StatelessWidget {
  const CounterHomepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Practice List'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(builder: (context,state){
            return Center(
              child: Text(state.counter.toString(),style: TextStyle(fontSize: 35),),
            );
          },)
        ,
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
               context.read<CounterBloc>().add(IncrementEvent());
              },child: Text('Add'),),
                ElevatedButton(onPressed: (){

                  context.read<CounterBloc>().add(DecrementEvent());
                },child: Text('Remove'),),
            ],
          ),


          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>SwitchHomePage()));
          }, child: Text('Switch Page'))
        ],
      ),
    );
  }
}

