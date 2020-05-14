import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:shopart_apk/main.dart';
import 'home.dart';


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

  //===========================iconos y rutas ===================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text('ShopArt'),
        ),
        
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){}),
        ],
      ),

      //===========================Contenedor donde se ven los detalles de los productos==============================

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
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context) {
                      return new AlertDialog(
                        title: new Text('Cantidad'),
                        content: new Text('Escoge la cantidad'),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text('Cerrar'),
                          )
                        ],
                      );
                    });
                  },
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
          ),
          Divider(color: Colors.red),
          new ListTile(
            title: new Text('Detalles del producto\n'),
            subtitle: new Text('Shopark se visiona para el 2021 como una de las primeras plataformas regionales mas importantes del país, que busca expandir el consumo de productos Santandereanos en le menos tiempo posible. También Shopark espera expandirse en diferentes regiones del país para promocionar los diferentes productos de los micro empresarios.'),
          )
                      ],
                    ),
                  );

  }
}
