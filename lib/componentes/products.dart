import 'package:flutter/material.dart';
import 'package:shopart_apk/componentes/products.dart';
import 'package:shopart_apk/paginas/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Objeto 1",
      "picture": "imagenes/gatito.jpg",
      "price": 10,
    },
    {
      "name": "Objeto 2",
      "picture": "imagenes/gatito.jpg",
      "price": 20,
    },
    {
      "name": "Objeto 3",
      "picture": "imagenes/gatito.jpg",
      "price": 40,
    },
    {
      "name": "Objeto 4",
      "picture": "imagenes/gatito.jpg",
      "price": 32000,
    },
    {
      "name": "Objeto 5",
      "picture": "imagenes/gatito.jpg",
      "price": 37261.6,
    },
    {
      "name": "Objeto 6",
      "picture": "imagenes/gatito.jpg",
      "price": 16,
    },
    {
      "name": "Objeto 7",
      "picture": "imagenes/gatito.jpg",
      "price": 26,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              //pasando los valores de los productos a la pagina de detalles de productos
                builder: (context) => new ProductDetails(
                  produc_detail_name: prod_name,
                  produc_detail_picture: prod_picture,
                  produc_detail_price: prod_price,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: Text(
                    "\$$prod_price",
                    style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
