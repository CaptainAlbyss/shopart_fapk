import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

class ProductDetails extends StatefulWidget {
  final produc_detail_name;
  final produc_detail_picture;
  final produc_detail_price;

  ProductDetails({
    this.produc_detail_name,
    this.produc_detail_picture,
    this.produc_detail_price
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('ShopArt'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: (){})
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new ResponsiveContainer(
            heightPercent: 35.0,
              widthPercent: 100.0,
              child: Container(color: Colors.white, child: GridTile(
                child: Image.asset(widget.produc_detail_picture),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.produc_detail_name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0)),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                         child: new Text("\$${widget.produc_detail_price}", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20.0))
                        )
                          
                        ]
                    ),
                  ),
                ),
              ),
              ),
          ),

          //====================BOTON CANTIDAD===========================
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Cantidad', style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0))),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              )
            ],
          ),


          //=======================Boton para comprar===========================
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  elevation: 0.0,
                  child: new Text('Comprar Ahora', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0)),

                    ),

              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: (){})
            ],
          )

                      ],
                    ),
                  );

  }
}
