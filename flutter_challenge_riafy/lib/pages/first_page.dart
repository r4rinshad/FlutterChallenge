
import 'package:flutter/material.dart';

import '../helper/helper.dart';
import 'home_page.dart';
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/w1.jpg'), fit: BoxFit.fitHeight)

        ),
        child: Stack(
          children: <Widget>[
            PageView(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: controller,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 28),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Modular',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 30.0)),
                              TextSpan(
                                  text: ' Planters',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 30.0))
                            ])),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:
                        28.0,right: 100,top: 20
                      ),
                      child: Text(
                        'Designed to form the artificial enviorment of any plant.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 28),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                            text: TextSpan(children: [

                              TextSpan(
                                  text: ' Planters',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 30.0))
                            ])),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:
                      28.0,right: 100,top: 20
                      ),
                      child: Text(
                        'Designed to form the artificial enviorment of any plant.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 28),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                            text: TextSpan(children: [

                              TextSpan(
                                  text: ' Planters',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 30.0))
                            ])),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:
                      28.0,right: 100,top: 20
                      ),
                      child: Text(
                        'Designed to form the artificial enviorment of any plant.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 28),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                            text: TextSpan(children: [

                              TextSpan(
                                  text: ' Planters',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 30.0))
                            ])),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:
                      28.0,right: 100,top: 20
                      ),
                      child: Text(
                        'Designed to form the artificial enviorment of any plant.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 50,
              left: 40,
              child: InkWell(
                onTap: () {

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));

                },
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 18,),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              left: 10,
              child: SizedBox(
                // width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 2.5,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: pageIndex == 0
                                      ? Colors.black
                                      : Colors.grey,
                                  width: 2),
                              color: pageIndex == 0 ? green : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 2.5,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: pageIndex == 1
                                      ? Colors.black
                                      : Colors.grey,
                                  width: 2),
                              color: pageIndex == 1 ? green : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 2.5,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: pageIndex == 2
                                      ? Colors.black
                                      : Colors.grey,
                                  width: 2),
                              color: pageIndex == 2 ? green : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 2.5,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: pageIndex == 3
                                      ? Colors.black
                                      : Colors.grey,
                                  width: 2),
                              color: pageIndex == 2 ? green : Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
