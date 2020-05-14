import 'package:flutter/material.dart';
import 'package:shopart_apk/main.dart';
import 'package:shopart_apk/componentes/cart_products.dart';
import 'home.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  //======================================= iconos y rutas del carrito ==========================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text('Tu Carrito'),
        ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white70, onPressed: (){}),
        ],
      ),


      //==========================================Cuerpo del carrito de productos===============================

      body: new Cart_Products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text('Total:'),
              subtitle: new Text("\$10000"),
            )),
            Expanded(
              child: new MaterialButton(onPressed: (){},
                child: new Text('Comprar', style: TextStyle(color: Colors.white),),
                color: Colors.red,),

            )

          ],
        ),
      ),
    );
  }
}
