import 'package:flutter/material.dart';
import 'package:krbclothing/main.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_picture;
  final product_details_new_price;
  final product_details_old_price;

  ProductDetails(
      {this.product_details_name,
      this.product_details_picture,
      this.product_details_new_price,
      this.product_details_old_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.purpleAccent,
          title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text('krbClothing')),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
                height: 300.0,
                child: GridTile(
                    child: Container(
                      color: Colors.white70,
                      child: Image.asset(widget.product_details_picture),
                    ),
                    footer: new Container(
                        color: Colors.white70,
                        child: ListTile(
                          leading: new Text(
                            widget.product_details_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          title: new Row(
                            children: <Widget>[
                              Expanded(
                                  child: new Text(
                                "\N${widget.product_details_old_price}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough),
                              )),
                              Expanded(
                                  child: new Text(
                                "\N${widget.product_details_new_price}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),),
                              ),
                            ],
                          ),
                        )
                    )
                )
            ),

        // === the first buttons ===

            Row(
              children: <Widget>[
        // === the size button ===
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("choose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text(("close"),),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Color"),
                        content: new Text("Choose the color"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text("close"),)
                        ],
                      );
                    }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Quantity"),
                        content: new Text("choose the quantity"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("close"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              )
            ],),

        // == the second buttons ===
            Row(children: <Widget>[
              // === the size button ===
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now")
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red, onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),
            ],),
            Divider(),
            new ListTile(
              title: new Text("Product details"),
              subtitle: new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Id cursus metus aliquam eleifend mi in. At elementum eu facilisis sed odio morbi quis commodo odio. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Aliquam malesuada bibendum arcu vitae elementum curabitur. Id cursus metus aliquam eleifend mi in. Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Quis eleifend quam adipiscing vitae proin sagittis. Facilisi cras fermentum odio eu feugiat."),
            ),
            Divider(),
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0,5.0),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_details_name),)
              ],
            ),

            //add product brand
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0,5.0),
                  child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),
                Padding(padding: const EdgeInsets.all(5.0),
                  child: new Text("Product X"),)
              ],
            ),

            // add Product condition
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0,5.0),
                  child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
                Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("Good"),)
              ],
            ),
            Divider(),
            new Text("Similar products"),
            // Similar product search
            Container(
              height: 360.0,
              child: Similar_products(),
            )
          ],
        ));
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_single_products(
            prod_name: product_list[index]['name'],
            prod_Picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_products extends StatelessWidget {
  final prod_name;
  final prod_Picture;
  final prod_old_price;
  final prod_price;

  Similar_single_products(
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


