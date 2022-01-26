import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late bool  _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2),(){
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ic_header.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.1),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40, right: 40, left: 40),
                      child: Center(
                          child: Text(
                        "What kind of hotel you need?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40, left: 40, bottom: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: TextField(
                          decoration: InputDecoration(
                              // contentPadding:
                              //     EdgeInsets.only(left: 20, right: 20),
                              prefixIcon: Icon(Icons.search_outlined),
                              prefixIconColor: Colors.grey,
                              hintText: "Search for homes",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  //#Text
                  Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Best Hotels",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //#images
                  Container(
                    height: 180,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Container(
                        child: IconButton(
                          alignment: Alignment.bottomRight,
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outlined),
                          color: Colors.red,
                        ),
                        width: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/ic_hotel3.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: IconButton(
                          alignment: Alignment.bottomRight,
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outlined),
                          color: Colors.red,
                        ),
                        width: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/ic_hotel0.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //#Text
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Airport Hotel",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //#images
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: IconButton(
                            alignment: Alignment.bottomRight,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outlined),
                            color: Colors.red,
                          ),
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/ic_hotel1.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: IconButton(
                            alignment: Alignment.bottomRight,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outlined),
                            color: Colors.red,
                          ),
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/ic_hotel4.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //#Text
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Resort Hotel",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //#images
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: IconButton(
                            alignment: Alignment.bottomRight,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outlined),
                            color: Colors.red,
                          ),
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/ic_hotel4.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: IconButton(
                            alignment: Alignment.bottomRight,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outlined),
                            color: Colors.red,
                          ),
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/ic_hotel1.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
