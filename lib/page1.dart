import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1(
      {Key? key, this.image, this.name, this.price, this.sprice, this.name1})
      : super(key: key);

  final image;
  final name;
  final price;
  final sprice;
  final name1;

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map<String, dynamic>> list3 = [
    {
      'image': 'assets/image/b1.png',
      'name': 'Double Cheese',
    },
    {
      'image': 'assets/image/b3.png',
      'name': 'Beef Burger',
    },
    {
      'image': 'assets/image/b4.png',
      'name': 'Chicken Burger',
    }
  ];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1EB2A6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    )),
                Row(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.white,
                      child: Image(image: AssetImage('assets/image/user.png')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Text(
                        widget.name.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(
                        widget.name1.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Burger KING Delivery.15000 25',
                      style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 180,
                        //color: Colors.white,
                        child: Image.asset(
                          widget.image,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 36,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Text(widget.price,
                                      style: TextStyle(fontSize: 10)),
                                ),
                                Text(widget.sprice,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.star,
                                  color: Color(0xffD5F7E7), size: 20),
                              SizedBox(
                                width: 3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 410,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(height: 10),
                        Text("Lorem ipsum dolor sit amet,consectetur"
                            "adipiscing elit. Fermentum aecu vitae, libero,proin "
                            "id et eros, turpis pellentesque. Diam nam felis,"
                            "feugiat eget nibh tellus ullamcorper mattis"
                            "bibendum. Malesuada adipiscing dis tincidunt"
                            "pretium cras. Est tellus mi fermentum malesuada."),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 360,
                    child: ListView.builder(
                      itemCount: list3.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 105,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff1EB2A6),
                                  ),
                                  margin: EdgeInsets.only(right: 5, left: 28),
                                ),
                                Positioned(
                                  top: 15,
                                  bottom: 18,
                                  left: 5,
                                  child: Container(
                                    height: 80,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      // color: Colors.white,
                                      image: DecorationImage(
                                          image:
                                              AssetImage(list3[index]['image']),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              list3[index]['name'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 53,
                          width: 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (counter > 0) {
                                        counter--;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.remove_circle_outlined,
                                      size: 30),
                                  color: Color(0xffFFA44B)),
                              Text("$counter",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      counter++;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle, size: 30),
                                  color: Color(0xffFFA44B)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color(0xffD5F7E7),
                          ),
                        ),
                        Container(
                          height: 53,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color(0xffFFA44B),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Buy Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
