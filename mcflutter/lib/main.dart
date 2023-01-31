import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  static const String _title = 'Flutter Code Sample';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: MyApp._title,
      home: MyStatefulWidget(),
    );
  }
}
bool tap=false;
bool tap1=false;
bool tap2=false;
bool tap3=false;
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('McFlutter'),
      ),
      body: 
      Column(children: [
        
        Card(
          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 1)),
          child: 
        Column(
          children: [
            ListTile(
              title: Text("Flutter MCFLutter"),
              subtitle: Text("Experienced App Developer"),
              leading: Icon(Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(children: [
          Expanded(child: Text(textAlign: TextAlign.left,"123 Main Street")),
          
          Expanded(child: Text(textAlign: TextAlign.right,"(415)-555-0198")),
        ],),
              ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
                
                      IconButton(
                        icon: Icon(Icons.accessibility), 
                        iconSize: 30,
                        color: tap? Colors.indigo: Colors.black54,
                        onPressed: () {
                        if(tap==false);
                        tap=!tap;
                        setState(() {});
                        }),
                      IconButton(
                       icon: Icon(Icons.timer), 
                        iconSize: 30,
                        color: tap1? Colors.indigo: Colors.black54,
                        onPressed: () {
                        if(tap1==false);
                        tap1=!tap1;
                        setState(() {});
                        }),
                      IconButton(
                        icon: Icon(Icons.phone_iphone), 
                        iconSize: 30,
                        color: tap2? Colors.indigo: Colors.black54,
                        onPressed: () {
                        if(tap2==false);
                        tap2=!tap2;
                        setState(() {});
                        }),
                  
                      IconButton(
                     icon: Icon(Icons.phone_android), 
                        iconSize: 30,
                        color: tap3? Colors.indigo: Colors.black54,
                        onPressed: () {
                        if(tap3==false);
                        tap3=!tap3;
                        setState(() {});
                        }),
              ],
          ),
        ],) 
        ),
        
        ],
        )
    );
  }
}
