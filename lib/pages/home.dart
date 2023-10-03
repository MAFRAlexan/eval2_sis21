import 'package:flutter/material.dart';


class home extends StatefulWidget{
  @override
  State<home> createState() => homeState();
}

class homeState extends State<home>{
  int ItemDrawer = 0;



  void _onSelectItemDrawer( int pos){
    Navigator.pop(context);
    setState(() {
      ItemDrawer = pos;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('EVALUACIÓN 2'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'MENÚ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Divider(
                color: Colors.green
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text('Acerca de nosotros'),
              onTap: (){
                _onSelectItemDrawer(0);

              },
            ),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Registrar producto'),
                onTap: (){
                  _onSelectItemDrawer(1);

                }
            ),
            ListTile(
                leading: Icon(Icons.construction),
                title: Text('Consultar'),
                onTap: (){
                  _onSelectItemDrawer(2);

                }
            ),
            Divider(
                color: Colors.green
            ),
          ],
        ),
      ),


    );
  }
}