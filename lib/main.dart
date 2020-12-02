import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/count.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: CounterProvideClass()),
          ],
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
          
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}


class MyHomePage extends StatelessWidget {
  
  final String title;
  MyHomePage({this.title});

  void _incrementCounter(BuildContext context) {
    Provider.of<CounterProvideClass>(context , listen: false).incrementCount();
  }

  @override
  Widget build(BuildContext context) {
    var getCount = Provider.of<CounterProvideClass>(context).getCount;
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text("$title"),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$getCount',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
