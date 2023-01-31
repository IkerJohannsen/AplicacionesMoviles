import 'package:flutter/material.dart';

class HomePageTieso extends StatefulWidget {
  const HomePageTieso({super.key});

  @override
  State<HomePageTieso> createState() => _HomePageTiesoState();
}

class _HomePageTiesoState extends State<HomePageTieso> {
int counter=0;

bool tap=false;
bool tapd=false;
bool tap1=false;
bool tap2=false;
bool tap3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: 
        ListView(children: [
          Image.network(
            "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"
            ),
            ListTile(
              title: Text("El Iteso, Universidad Jesuita de Guadalajara"),
              subtitle: Text("San Pedro Tlaquepaque, Jalisco, México"),
              leading: Icon(Icons.school),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        color: tap? Colors.indigo: Colors.black54,
                        iconSize: 15,
                        onPressed: () {
                          if(tap==false)counter++;
                          tap=!tap;
                          setState(() {});
                        },  
                      ),
                      IconButton(
                    icon: Icon(Icons.thumb_down),
                    color: tapd? Colors.indigo: Colors.black54,
                    iconSize: 15,
                    onPressed: () {
                      if(tapd==false)counter--;
                      tapd=!tapd;
                      setState(() {});
                    },  
                  ),
                    ],
                  ),
                  Text("$counter",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 10,
                  ),
                  ),
                ],
              ),
              ),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(children: [
                Expanded(child: 
                  Column(
                    children: [
                      IconButton(
                        color: tap1? Colors.indigo: Colors.black,
                        icon: Icon(Icons.email), 
                        iconSize: 40,
                        onPressed: () { 
                                                   
                          ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Puedes encontrar comida en sus cafeterias"),));
                              
                      tap1=!tap1;
                      setState(() {});
                        },),
                        Text("Email"),
                        
                    ],
                  ),
                  ),
                  Expanded(child: 
                  Column(
                    children: [
                      IconButton(
                        color: tap2? Colors.indigo: Colors.black,
                        icon: Icon(Icons.call), 
                        iconSize: 40,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Puedes pedir info en rectoria"),));
                              tap2=!tap2;
                      setState(() {});
                        },),
                        Text("Llamada"),
                    ],
                  ),
                  ),
                  Expanded(child: 
                  Column(
                    children: [
                      IconButton(
                        color: tap3? Colors.indigo: Colors.black,
                        icon: Icon(Icons.turn_right), 
                        iconSize: 40,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Se encuentra ubicado en Periferico Sur 8585"),));
                              tap3=!tap3;
                      setState(() {});
                        },),
                        Text("Direccion"),
                    ],
                  ),
                    
                  ),

              ],
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Text("ITESO, Universidad Jesuita de Guadalajara — distinct from the University of Guadalajara — also known as Instituto Tecnológico y de Estudios Superiores de Occidente, ITESO, is a Jesuit university in the Western Mexican state of Jalisco, located in the municipality of Tlaquepaque in the Guadalajara Metropolitan Area.",
              textAlign: TextAlign.justify,
              
              ),
            )
            
            ],),
      );
  }
}