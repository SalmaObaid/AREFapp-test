import 'package:flutter/material.dart';

class CourseListScreen extends StatefulWidget {
  const CourseListScreen({super.key});

  @override
  State<CourseListScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseListScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      " :المواد الحالية",
                      style: TextStyle(
                        fontFamily: "blod",
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: 'أبحث عن مادة..',
                              hintStyle: TextStyle(fontFamily: "thin"),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[50],
                      ),
                      height: 600,
                      width: 400,
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            SizedBox(height: 20),
                            Container(
                              height: 200,
                              width: 60,
                              child: Center(
                                  child: Text(
                                "جافا 101",
                                style: TextStyle(
                                    fontFamily: "blod",
                                    fontSize: 50,
                                    color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFCCC1F0),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: Center(
                                  child: Text(
                                textAlign: TextAlign.center,
                                "أنظمة التشغيل",
                                style: TextStyle(
                                    fontFamily: "blod",
                                    fontSize: 50,
                                    color: Colors.white),
                              )),
                              height: 200,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFB4E5BC),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(height: 20),
                            Container(
                              alignment: Alignment.center,
                              child: Center(
                                  child: Text(
                                textAlign: TextAlign.center,
                                "المنطق الرقمي",
                                style: TextStyle(
                                    fontFamily: "blod",
                                    fontSize: 50,
                                    color: Colors.white),
                              )),
                              height: 200,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFFFDDAE),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: Center(
                                  child: Text(
                                "جافا 102",
                                style: TextStyle(
                                    fontFamily: "blod",
                                    fontSize: 50,
                                    color: Colors.white),
                              )),
                              height: 200,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFC4B989),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(height: 20),
                            Container(
                              alignment: Alignment.center,
                              child: Center(
                                  child: Text(
                                "عمارة حاسب",
                                style: TextStyle(
                                    fontFamily: "blod",
                                    fontSize: 50,
                                    color: Colors.white),
                              )),
                              height: 200,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFF3ABA7),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
