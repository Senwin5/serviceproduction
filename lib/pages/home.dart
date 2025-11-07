import 'package:flutter/material.dart';
import 'package:serviceproduction/pages/book_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff284a79), // Optional: make it visible
        elevation: 4,
        automaticallyImplyLeading: false,  // This removes the back arrow
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
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
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello, Maria',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'asset/images/post.jpg',
                          height: 60,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    'Which service do you need',
                    style: TextStyle(
                      color: Color(0xff284a79),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Adding a search bar to the service below
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "How can i help you?",
                        hintStyle: TextStyle(color: Colors.black45),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color(0xff284a79),
                        ),
                      ),
                    ),
                  ),

                  //Adding images of the category e:g, Painter, Electrician etc..
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Image.asset(
                              "asset/images/laundry.jpg",
                              height: 45,
                              width: 45,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //Adding text to the image after converting the image to a Column
                          SizedBox(height: 5.0),
                          Text(
                            'Laundry',
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20.0),
                      //Adding the second column after copying
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Image.asset(
                              "asset/images/painting.jpg",
                              height: 45,
                              width: 45,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //Adding text to the image after converting the image to a Column
                          SizedBox(height: 5.0),
                          Text(
                            'Painting',
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20.0),
                      //Adding the second column after copying
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Image.asset(
                              "asset/images/cleaning.jpg",
                              height: 45,
                              width: 45,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //Adding text to the image after converting the image to a Column
                          SizedBox(height: 5.0),
                          Text(
                            'Cleaning',
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20.0),
                      //Adding the second column after copying
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Image.asset(
                              "asset/images/repair.jpg",
                              height: 45,
                              width: 45,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //Adding text to the image after converting the image to a Column
                          SizedBox(height: 5.0),
                          Text(
                            'Repearing',
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            //We are outdide the container
            Padding(
              padding: const EdgeInsets.only(left: 22.0, top: 20.0),
              child: Text(
                "Popular Services",
                style: TextStyle(
                  color: Color(0xff284a79),
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //Passing a container to create a new box of category
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 227, 244),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "asset/images/post.jpg",
                      height: 120,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 5.0),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Laundry",
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "by Ola Sharmas",
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                            //width: 0,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 94, 172, 202),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "₦2500/Hour",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //Copying the container and paste again
                          SizedBox(width: 20.0),
                          //To make ths 'book now button to work we need to convert the container
                          //To GestureDetector then use the onTap navigator
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BookPage(),
                                ),
                              );
                            },
                            child: Container(
                              //width: 0,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color(0xff284a79),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Book Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Passing a container to create a new box of category
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 227, 244),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "asset/images/painter.jpeg",
                      height: 120,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 5.0),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Painting",
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "by Jacob",
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                            //width: 0,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 94, 172, 202),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "₦2500/Hour",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //Copying the container and paste again
                          SizedBox(width: 20.0),
                          Container(
                            //width: 0,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xff284a79),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Passing a container to create a new box of category
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 227, 244),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "asset/images/cleaner.jpeg",
                      height: 120,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 5.0),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Home Cleaning",
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "by Kalus",
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                            //width: 0,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 94, 172, 202),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "₦2500/Hour",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //Copying the container and paste again
                          SizedBox(width: 20.0),
                          Container(
                            //width: 0,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xff284a79),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Passing a container to create a new box of category
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 227, 244),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "asset/images/repairier.jpeg",
                      height: 120,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 5.0),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Repairing",
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "by Temu",
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                            //width: 0,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 94, 172, 202),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "₦2500/Hour",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //Copying the container and paste again
                          SizedBox(width: 20.0),
                          Container(
                            //width: 0,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xff284a79),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
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
    );
  }
}
