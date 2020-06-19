import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krbclothing/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "8000",
      "price": "7000",
    },
    {
      "name": "High heels",
      "picture": "images/products/hills1.jpeg",
      "old_price": "5000",
      "price": "4000",
    },
    {
      "name": "Black shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": "5000",
      "price": "3500",
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": "3000",
      "price": "2500",
    },
    {
      "name": "Short skrt",
      "picture": "images/products/skt1.jpeg",
      "old_price": "2000",
      "price": "1500",
    },
    {
      "name": "men pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": "7000",
      "price": "5000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            prod_name: product_list[index]['name'],
            prod_Picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final prod_name;
  final prod_Picture;
  final prod_old_price;
  final prod_price;

  Single_product(
      {this.prod_name,
      this.prod_Picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    //passing the value of the product to the product details page
                    builder: (context) => new ProductDetails(
                      product_details_name: prod_name,
                      product_details_picture: prod_Picture,
                      product_details_new_price: prod_price,
                      product_details_old_price: prod_old_price,
                    ))),
                child: GridTile(

                  footer: new Container(
                    color: Colors.white70,
                    child: new Row(children: <Widget>[
                      Expanded(
                        child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      new Text("\N${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                    ],),
                  ),

                  child: Image.asset((prod_Picture), fit: BoxFit.cover),
                ),
              ),
            )));
  }
}
