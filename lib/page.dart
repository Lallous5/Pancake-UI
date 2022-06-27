// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 32,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_basket,
              color: Colors.black,
              size: 32,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find Your \nFavorite Pancakes",
                    style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/profile.jpg'))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, offset: Offset(3, 4))
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search..',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.red,
                            size: 24,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, offset: Offset(3, 4))
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(Icons.filter_alt),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Title_view("Popular..."),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listpan(
                      'assets/images/strawberry1.jpg', 'StrawBerry Pancake'),
                  listpan('assets/images/blackberry.jpg', 'BlackBerry Pancake'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Title_view("Explore ..."),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  categories('assets/images/espaniol.jpg', "Espaniol"),
                  categories('assets/images/italian.jpg', "Italian"),
                  categories('assets/images/french.jpg', "French"),
                  categories('assets/images/brazil.jpg', "Brazil"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Title_view("Recommended..."),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listpan(
                      'assets/images/strawberry3.jpg', 'StrawBerry Pancake'),
                  listpan(
                      'assets/images/strawberry4.jpg', 'BlackBerry Pancake'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding Title_view(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "View All",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.normal, color: Colors.red),
          ),
        ],
      ),
    );
  }

  Column categories(String img, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Padding listpan(String imgpan, String namepan) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 270,
        height: 258,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 270,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, offset: Offset(3, 4))
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(imgpan), fit: BoxFit.cover),
              ),
            ),
            Text(
              namepan,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Pancake with strawberry on \n white powder and chocolate",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "\$ 12.99",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
