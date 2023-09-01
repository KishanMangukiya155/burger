import 'package:burger/page1.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selcted = 0;
  List<Map<String, dynamic>> list1 = [
    {
      'icon': Icons.ramen_dining,
      'name': 'Noodels',
    },
    {
      'icon': Icons.lunch_dining,
      'name': 'Burget',
    },
    {
      'icon': Icons.icecream,
      'name': 'Desert',
    },
    {
      'icon': Icons.sports_bar,
      'name': 'Drink',
    }
  ];

  List<Map<String, dynamic>> list2 = [
    {
      'image': 'assets/image/b2.png',
      'name': 'Chicken',
      'name1': 'Burger',
      'price': 'Rp',
      'sprice': '65.000',
    },
    {
      'image': 'assets/image/b1.png',
      'name': 'Double',
      'name1': 'Cheese',
      'price': 'Rp',
      'sprice': '85.000',
    },
    {
      'image': 'assets/image/b3.png',
      'name': 'Beef',
      'name1': 'Burger',
      'price': 'Rp',
      'sprice': '75.000',
    },
    {
      'image': 'assets/image/b4.png',
      'name': 'Chicken',
      'name1': 'Burger',
      'price': 'Rp',
      'sprice': '105.000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 30),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Image(
                                      image:
                                          AssetImage('assets/image/user.png')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Dinihari',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      SizedBox(height: 5),
                                      Container(
                                        height: 15,
                                        width: 30,
                                        child: Center(
                                            child: Text(
                                          'Vip',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        )),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 80, bottom: 10),
                                  child: Text('Rp',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                                Text(
                                  '576.500',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 50, right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '139',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Buy',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Voucher',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '24',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Alms',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff1EB2A6)),
                    ),
                    Positioned(
                      bottom: -20,
                      left: 30,
                      right: 30,
                      child: Container(
                        height: 50,
                        width: 290,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: false,
                                hintText: 'Whats do you want to eat ?',
                                hintStyle: TextStyle(fontSize: 15),
                                prefixIcon: Icon(
                                  Icons.search_rounded,
                                  size: 25,
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 4),
                                  blurRadius: 10,
                                  color: Colors.grey)
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 110,
                    width: 350,
                    // color: Colors.grey,
                    child: ListView.builder(
                      itemCount: list1.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selcted = index;
                                  });
                                },
                                child: Container(
                                  height: 65,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: selcted == index
                                          ? Color(0xff3f4d4d)
                                          : Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5,
                                            offset: Offset(2, 3))
                                      ]),
                                  margin: EdgeInsets.only(left: 15),
                                  child: Center(
                                    child: Icon(
                                      list1[index]['icon'],
                                      color: selcted == index
                                          ? Colors.white
                                          : Color(0xff3f4d4d),
                                      size: 38,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(list1[index]['name']),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: 260,
                  width: 360,
                  child: ListView.builder(
                    itemCount: list2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 260,
                            width: 195,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50)),
                              color: Color(0xff1EB2A6),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 29, top: 18),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        list2[index]['name'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Text(
                                          list2[index]['name1'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              list2[index]['price'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 13,
                                              ),
                                              child: Text(
                                                list2[index]['sprice'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 52,
                                          width: 52,
                                          child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        Page1(
                                                      image: list2[index]
                                                          ['image'],
                                                      name: list2[index]
                                                          ['name'],
                                                      price: list2[index]
                                                          ['price'],
                                                      sprice: list2[index]
                                                          ['sprice'],
                                                      name1: list2[index]
                                                          ['name1'],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Icon(Icons.add, size: 38)),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 85,
                            bottom: 60,
                            left: -5,
                            child: Container(
                              height: 100,
                              width: 160,
                              decoration: BoxDecoration(
                                // color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(list2[index]['image']),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 360,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Color(0xff1EB2A6),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.bookmark,
                      size: 28,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.assignment,
                      size: 28,
                      color: Colors.white,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.home,
                        size: 27,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      size: 28,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person,
                      size: 28,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
