import 'package:count_app/style/customer_style.dart';
import 'package:count_app/ui/widgets/app_by_default.dart';
import 'package:count_app/ui/widgets/customer_floating_action_button.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  int _currentNumber = 0;

  final CustomerFloatingActionButton _customerFloatingButton = CustomerFloatingActionButton();

  void _incrementCounter() {
    _currentNumber++;
    setState(() {});

  }

  void _decrementCounter() {
    _currentNumber--;
    setState(() {});

  }

  void _resetCounter() {
    _currentNumber = 0;
    setState(() {});

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBarByDefault().buildNewAppBar("Counter App!!", Colors.redAccent),
          body: Center(
            child: widget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Current number:", style: CustomerStyle.titleStyle,),
                  Text(_currentNumber.toString())

                ],

              ),
            ),

          ),
          floatingActionButton: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _customerFloatingButton.buildNewFloatingActionButton(Colors.redAccent, _decrementCounter, Icons.arrow_back_ios),
              _customerFloatingButton.buildNewFloatingActionButton(Colors.red, _resetCounter, Icons.restart_alt),
              _customerFloatingButton.buildNewFloatingActionButton(Colors.redAccent, _incrementCounter, Icons.arrow_forward_ios),

            ],

          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

          ),

        ),

      );

  }

}
