import 'package:flutter/material.dart';

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
      ),
      body: Container(
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
                    Color.fromARGB(255, 235, 237, 238),
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
                          'images/post.jpg',
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
                              "images/laundry.jpg",
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
                              "images/painting.jpg",
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
                              "images/cleaning.jpg",
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
                              "images/repair.jpg",
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
            //Passing a container to it
            Container(
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }
}
