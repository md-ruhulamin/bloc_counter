import 'package:bloc_counter/slider/slider_bloc/slider_bloc.dart';
import 'package:bloc_counter/slider/slider_bloc/slider_event.dart';
import 'package:bloc_counter/slider/slider_bloc/slider_state.dart';
import 'package:bloc_counter/switch/switch_bloc/switch_bloc.dart';
import 'package:bloc_counter/switch/switch_bloc/switch_event.dart';
import 'package:bloc_counter/switch/switch_bloc/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchHomePage extends StatefulWidget {
  @override
  _SwitchHomePageState createState() => _SwitchHomePageState();
}

class _SwitchHomePageState extends State<SwitchHomePage> {
  bool _switchValue = false;
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch, Container, and Slider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          BlocBuilder<SwitchBloc,SwichState>(builder: (context, state) {
            return   Switch(
              value: state.isSwitched,
              onChanged: (value) {
            
               context.read<SwitchBloc>().add(ToggleSwitch());
              
              },
            );
          },),
           
            SizedBox(height: 20),
           BlocBuilder<SliderBloc,SliderState>(builder: (context, state) {
           return  Column(
             children: [
               SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue.withOpacity(state.slider),
            ),
               Slider(
                  value: state.slider,
                  min: 0,
                  max: 1,
                  onChanged: (value) {
                 print(value);
                 print(state.slider);
                  context.read<SliderBloc>().add(SliderChanged(slider: value));
                     
                         
                  },
                ),
             ],
           );
           }),

             BlocBuilder<SliderBloc,SliderState>(builder: (context, state) {
           return Text('Slider Value: ${state.slider.toStringAsFixed(3)}');
           }),
            Text('Slider Value: ${_sliderValue.toStringAsFixed(1)}'),
          ],
        ),
      ),
    );
  }
}
