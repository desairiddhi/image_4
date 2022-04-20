import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title:const Text('AppBar'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Text('Strawberry',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
              SizedBox(height: 100,width: 200,),
              Text('Papaya',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.yellow),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin:const EdgeInsets.symmetric(vertical: 30),
                height: 200,
                width: 200,
                decoration:const  BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage('assets/image/fruit.jpeg'
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Text('Orange',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.orange),),
              SizedBox(height: 100,width: 250,),
              Text('Kiwi',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.green),)
            ],
          ),
        ],
      ),
    );
  }
}