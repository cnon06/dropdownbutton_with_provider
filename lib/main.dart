import 'package:flutter/material.dart';
import 'package:flutter_application_14/currency.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<Currency>(
          create: (context) => Currency(), child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  var selectedItem = "USD";

  @override
  Widget build(BuildContext context) {
    final currency = Provider.of<Currency>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter value: ${currency.selectedItem}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            
  Consumer<Currency>(
                builder: (_, selectedItem, __) =>

  
  Text("Currency: ${currency.selectedItem}", style: const TextStyle(fontSize: 40),)
  ),

  const SizedBox(height: 50),

            Consumer<Currency>(
                builder: (_, selectedItem, __) => DropdownButton(
                    value: currency.selectedItem,
                    items: const [
                      DropdownMenuItem(
                        value: "USD",
                        child: Text("USD"),
                      ),
                      DropdownMenuItem(
                        value: "Euro",
                        child: Text("Euro"),
                      ),
                      DropdownMenuItem(
                        value: "Pound",
                        child: Text("Pound"),
                      ),
                      DropdownMenuItem(
                        value: "JPY",
                        child: Text("JPY"),
                      ),
                    ],
                    onChanged: (value2) {
                      
                     
                      currency.selectItem(value2);
                    
                      
                    })

                
                ),
           
          ],
        ),
      ),
    );
  }
}
