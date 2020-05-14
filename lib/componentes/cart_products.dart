import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {


  //===============Productos de prueba en el carrito=============================
  var Products_en_carrito = [
    {
      "name": "Objeto 1",
      "picture": "imagenes/gatito.jpg",
      "price": 10,
      "quantity": 1,
    },
    {
      "name": "Objeto 2",
      "picture": "imagenes/gatito.jpg",
      "price": 1000,
      "quantity": 1,
    },
    {
      "name": "Objeto 3",
      "picture": "imagenes/gatito.jpg",
      "price": 1000,
      "quantity": 100,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_en_carrito.length,
        itemBuilder: (context, index){
        return Single_Cart_Product(
          cart_prod_name: Products_en_carrito[index]["name"],
          cart_prod_picture: Products_en_carrito[index]["picture"],
          cart_prod_price: Products_en_carrito[index]["price"],
          cart_prod_quantity: Products_en_carrito[index]["quantity"],
        );
        });
  }
}

class Single_Cart_Product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_quantity;

  Single_Cart_Product({
   this.cart_prod_name,
   this.cart_prod_picture,
   this.cart_prod_price,
   this.cart_prod_quantity,
});
  @override
  Widget build(BuildContext context) {
    return Card(
//==============================pa la imagen en carrito================================
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width: 80.0, height: 80.0,
        ),


//=========================== TITULO=================================


        title: new Text(cart_prod_name),

//==================================Precio producto en carrito=====================================
        subtitle: new Column(
          children: <Widget>[
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                ),
              ),
            )
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new Text("\nCantidad: " "$cart_prod_quantity", style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}


