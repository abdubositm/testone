import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  static final String id = "home_page";

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      // _counter--;
    });}
    void _ayirish() {
      setState(() {
        _counter--;
      }
      );
    }
    void _reset(){
    setState(() {
      _counter=0;
    });
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("Tasbex Pro Max"),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: FloatingActionButton(
                    backgroundColor: Colors.black87,
                    onPressed: (){
                      _reset();
                    },
                    tooltip: "Reset",
                    child: Text("Reset"),
                  ),
                ),
                SizedBox(height: 100,),
                Container(
                  //height: 150,
                  width: double.infinity,
                  //color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$_counter', style:Theme.of(context).textTheme.headline4,),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // height: 100,width: 100,
                      child: Column(
                        children: [
                          Container(
                            height:250,
                            width: 300,
                            child: FloatingActionButton(
                              backgroundColor: Colors.black,
                              onPressed: _incrementCounter,
                              tooltip: 'Bosing',
                              child: const Icon(Icons.add),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            child: FloatingActionButton(
                              backgroundColor: Colors.black,
                              onPressed: () {
                                _ayirish();
                              },
                              tooltip: 'Bosing',
                              child: Text("-"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )

        ),
      );
    }
  }