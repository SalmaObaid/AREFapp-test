import 'package:arefapp/Screens/course_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SafeArea(
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () async {},
                          icon: Icon(
                            Icons.notifications,
                            size: 35,
                            color: Colors.yellow[400],
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chat_outlined,
                            size: 35,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 75,
                      ),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ' لمى السحيلي  ',
                            style: TextStyle(
                              fontFamily: "mid",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple[300],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'المستوى: 1',
                            style: TextStyle(
                              fontFamily: "thin",
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple[300],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/pic.png"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Container(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                      right: 10,
                      left: 10,
                      top: 20,
                    ),
                    height: 230,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('images/arti2.png'),
                            fit: BoxFit.fill,
                          )),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              ' أفضل المقالات ',
                              style: TextStyle(
                                  fontFamily: "mid",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "أفضل المقالات التي تتم كتابتها \nعن طريق المتعلمين في البرنامج",
                              style: TextStyle(
                                  fontFamily: "thin",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 25),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 167, 198),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text(
                                'ابدأ القراءة',
                                style: TextStyle(
                                  fontFamily: "mid",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'البحث',
                          hintStyle: TextStyle(fontFamily: "thin")),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'أكمل تقدمك',
                        style: TextStyle(
                          fontFamily: "blod",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          Container(
                              alignment: AlignmentDirectional(0, 0),
                              height: 200,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.amber[300],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 65),
                                child: Text(
                                  'تراكيب محددة',
                                  style: TextStyle(
                                      fontFamily: "blod",
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ]),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: [
                            Container(
                                alignment: AlignmentDirectional(0, 0),
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Color(0xFFCCC1F0),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    "جافا 101",
                                    style: TextStyle(
                                        fontFamily: "blod",
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ]),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return CourseScreen();
                            },
                          ));
                        },
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
