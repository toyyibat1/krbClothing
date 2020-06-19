import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_cart = [
    {
    "name": "Blazer",
    "picture": "images/products/blazer1.jpeg",
    "price": 7000,
    "size": "M",
    "color": "Red",
    "quantity": "1"
  },
    {
      "name": "High heels",
      "picture": "images/products/hills1.jpeg",
      "price": 4000,
      "size": "S",
      "color": "Black",
      "quantity": "1"
    }
  ];
  

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_cart.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            cart_prod_name: Products_on_cart[index]["name"],
            cart_prod_color: Products_on_cart[index]["color"],
            cart_prod_picture: Products_on_cart[index]["picture"],
            cart_prod_price: Products_on_cart[index]["price"],
            cart_prod_qty: Products_on_cart[index]["quantity"],
            cart_prod_size: Products_on_cart[index]["size"],
          );
    });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        isThreeLine: true,
        //=== leading section ===
        leading: new Image.asset(cart_prod_picture,
          width: 80.0, height: 80.0,),

        // == title section ==
        title: new Text(cart_prod_name),

        // == subtitle section ==
        subtitle: new Column(
          children: <Widget>[
            //Row inside a column
            new Row(
              children: <Widget>[

                //size of products
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(cart_prod_size),
                ),

                // == product color ==
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text("Color:"),) ,

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(cart_prod_color),
                ),
              ],
            ),

            // == product price ==
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\N${cart_prod_price}", style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.purpleAccent
              ),),
            )
          ],
        ),
//        trailing: new Column(
//          children: <Widget>[
//            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
//            new Text("$cart_prod_qty"),
//            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
//          ],
//        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              new Text("${cart_prod_qty}", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }


}

