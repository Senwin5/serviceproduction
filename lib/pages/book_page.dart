import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0, left: 17.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xff284a79),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xfff7f9fa),
                    Color.fromARGB(255, 197, 227, 244),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cleaning bookpage',
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'by Shivsni Sharea',
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20.0),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "₦2500/Hr",
                          style: TextStyle(
                            color: Color(0xff284a79),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "asset/images/post.jpg",
                            height: 170,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "asset/images/dow.jpeg",
                            height: 170,
                            width: 120,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "asset/images/do.jpeg",
                            height: 170,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
