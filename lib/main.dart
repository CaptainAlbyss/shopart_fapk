import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopart_apk/componentes/products.dart';
import 'package:responsive_container/responsive_container.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('ShopArt'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white70, onPressed: (){showSearch(context: context, delegate: null);}),
          new IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white70, onPressed: (){})

        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //Esta vuelta hay que cambiarla para tomar de la Base de datos NO OLVIDAR!!!!!!
            new UserAccountsDrawerHeader(
                accountName: Text('Prueba'),
                accountEmail: Text('prueba@prueba.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.person, color: Colors.white70,),
                )
              ),
              decoration: new BoxDecoration(
                color: Colors.blue
              ),
            ),

            //Cuerpo de menu

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Inicio'),
              leading: Icon(Icons.home, color: Colors.lightBlue),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Mis Datos'),
              leading: Icon(Icons.person, color: Colors.lightBlue),
            ),
          ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categorias'),
                leading: Icon(Icons.dashboard, color: Colors.lightBlue),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Historial'),
                leading: Icon(Icons.shop, color: Colors.lightBlue),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Opciones'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Ayuda'),
                leading: Icon(Icons.help, color: Colors.redAccent),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.all(15.0),
          child: new Text('Productos Recientes', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0)),
          ),

          ResponsiveContainer(
            heightPercent: 80.0,
            widthPercent: 100.0,
            child: Container(color: Colors.white, child: Products()),

          )

        ],
      ),
    );
  }
}