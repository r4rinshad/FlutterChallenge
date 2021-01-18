import 'package:flutter/material.dart';
import 'package:flutter_challenge_riafy/model/plants.dart';

import '../helper/helper.dart';

class ProductPage extends StatefulWidget {

  final Plants product;

  ProductPage({Key key, this.product}) : super(key: key);
  @override
  _ProductPageState createState() => _ProductPageState(product);
}

class _ProductPageState extends State<ProductPage> {
  final Plants product;

  _ProductPageState(this.product);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,size: 20,)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: darkGrey),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: screenAwareSize(250, context),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 18.0,
                    ),
                    child: Container(
                      child: Hero(
                        tag: product.image,
                        child: Image.asset(
                          product.image,
                          fit: BoxFit.fitHeight,
                          height: 230,
                          width: 230,
                        ),
                      ),
                    ),
                  ),
                ),
                // ProductDisplay(product: product,),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 16.0),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                        color: const Color(0xFFFEFEFE),
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0),
                          ),
                          Text(
                            "\$ ${product.price}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Cart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20.0)),
                              Container(
                                height: 40,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                                child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20),
                  child: Text(
                    product.description,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(child: Text("Buy Now")),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
