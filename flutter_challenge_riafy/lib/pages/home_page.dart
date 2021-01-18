import 'package:flutter/material.dart';
import 'package:flutter_challenge_riafy/helper/bouncy_page_route.dart';
import 'package:flutter_challenge_riafy/helper/partial_border_container.dart';
import 'package:flutter_challenge_riafy/model/plants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'ProductPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<Plants> products = [
    Plants(
        'assets/plant3.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33), Plants(
        'assets/plant1.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33), Plants(
        'assets/plant4.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33),
Plants(
        'assets/plant5.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33),
Plants(
        'assets/plant6.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33),
Plants(
        'assets/plant7.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33),
Plants(
        'assets/plant8.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33),
Plants(
        'assets/plant9.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33),
Plants(
        'assets/plant10.jpg',
        'Grass Flower',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        122.33),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
leading:InkWell(
    onTap: (){
      Navigator.pop(context);
    },
    child: Icon(Icons.arrow_back_ios,size: 20,)) ,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white10,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.workspaces_filled),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:40.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Choose',
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 30.0)),
                      TextSpan(
                          text: ' Device',
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 30.0))
                    ])),
              ),
            ),

            Row(
              children: [
              //  PartialBorderContainer(gradient:  LinearGradient(colors: [Colors.grey, Colors.grey]), child: Center(child: Icon(Icons.search),), onPressed: null)
                Container(
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,

                      ),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))),


                  child: Center(
                    child: Icon(Icons.search),
                  ),
                )
//                Container(
//                  height: 50,
//                  width: 55,
//                  decoration: BoxDecoration(
//                      color: Colors.white38,
//                      border: Border.all(
//                        color: Colors.black,
//                        width: 1,
//
//                      ),
//                      borderRadius: BorderRadius.all(Radius.circular(18))),
//                  child: Center(
//                    child: Icon(Icons.search),
//                  ),
//                )
                ,SizedBox(
                  width: 15.0,
                ),
                Container(
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))),

                  child: Center(
                    child: Icon(Icons.settings_input_component),
                  ),
                ),
                SizedBox(
                  width: 25.0,
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
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(5))),

                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(

                padding: EdgeInsets.zero,
                crossAxisCount: 4,
                itemCount: products.length,
                // shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => new ClipRRect(

                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: InkWell(

                    onTap: () {
                      Navigator.push(context, BouncyPageRoute(widget: ProductPage(product: products[index],)));
//                      Navigator.of(context).push(MaterialPageRoute(
//                        builder: (_) => ProductPage(product: products[index])));

                      },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(

                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),

                                color: Colors.grey

                                ),
clipBehavior: Clip.antiAlias,
                                child: Hero(
                                    tag: products[index].image,
                                    child: Image.asset(products[index].image))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(products[index].name,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: '\$',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0)),
                                    TextSpan(
                                        text: products[index].price.toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0))
                                  ])),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 3 : 2),
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
