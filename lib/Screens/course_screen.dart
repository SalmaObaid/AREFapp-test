import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool? isChecked = false;
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Center(
                      child: Text(
                    "جافا 101",
                    style: TextStyle(
                        fontFamily: "blod", fontSize: 50, color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFCCC1F0),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Text(
                  "  جافا 101 مادة مقدمة في برمجة جافا وستتعلم العديد من المفاهيم والمهارات الأساسية والمتقدمة في عالم البرمجة وستكتسب معرفة شاملة في البرمجة بجافا",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontFamily: "thin", color: Colors.black45),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 20,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        "  موجز# ",
                        style: TextStyle(
                            fontFamily: "THIN",
                            color: Colors.black54,
                            fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 20,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        "  ممتع# ",
                        style: TextStyle(
                            fontFamily: "THIN",
                            color: Colors.black54,
                            fontSize: 10),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    width: 400,
                    height: 55,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isChecked,
                            activeColor: Colors.green,
                            tristate: true,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                          ),
                          Text("Data Types",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "mid",
                                  fontSize: 22,
                                  color: Colors.black45))
                        ]),
                  ),
                  onTap: () {
                    setState(() {
                      isChecked = true;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DataTypes();
                        },
                      ),
                    );
                  },
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    width: 400,
                    height: 55,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isChecked1,
                            activeColor: Colors.green,
                            tristate: true,
                            onChanged: (value) {
                              setState(() {
                                isChecked1 = value;
                              });
                            },
                          ),
                          Text("If-Else",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "mid",
                                  fontSize: 22,
                                  color: Colors.black45))
                        ]),
                  ),
                  onTap: () {
                    setState(() {
                      isChecked1 = true;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return IF_Else();
                        },
                      ),
                    );
                  },
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    width: 400,
                    height: 55,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isChecked2,
                            activeColor: Colors.green,
                            tristate: true,
                            onChanged: (value) {
                              setState(() {
                                isChecked2 = value;
                              });
                            },
                          ),
                          Text("Switch",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "mid",
                                  fontSize: 22,
                                  color: Colors.black45))
                        ]),
                  ),
                  onTap: () {
                    setState(() {
                      isChecked2 = true;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Switch();
                        },
                      ),
                    );
                  },
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    width: 400,
                    height: 55,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isChecked3,
                            activeColor: Colors.green,
                            tristate: true,
                            onChanged: (value) {
                              setState(() {
                                isChecked3 = value;
                              });
                            },
                          ),
                          Text("Methods",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "mid",
                                  fontSize: 22,
                                  color: Colors.black45))
                        ]),
                  ),
                  onTap: () {
                    setState(() {
                      isChecked3 = true;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Methods();
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}

//SCRREN1
class DataTypes extends StatefulWidget {
  const DataTypes({super.key});

  @override
  State<DataTypes> createState() => _DataTypesState();
}

class _DataTypesState extends State<DataTypes> {
  late CustomVideoPlayerController _customVideoPlayerController;
  String assetVideoPath = "videos/Variables.mp4";
  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[50],
          body:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 38,
            ),
            Text(
              "Data Type",
              style: TextStyle(
                fontFamily: "blod",
                fontSize: 38,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomVideoPlayer(
                customVideoPlayerController: _customVideoPlayerController),
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                ": مقدمة الدرس ",
                style: TextStyle(
                  fontFamily: "mid",
                  fontSize: 20,
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                " توفر لغة البرمجة جافا أنواعًا مختلفة لتعريف المتغيرات والبيانات. تشمل هذه الأنواع",
                textAlign: TextAlign.right,
                style: TextStyle(fontFamily: "thin", color: Colors.black45),
              ),
            )
          ]),
        ),
      ),
    );
  }

  void initializeVideoPlayer() {
    VideoPlayerController _videoPlayerController;
    _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class IF_Else extends StatefulWidget {
  const IF_Else({super.key});

  @override
  State<IF_Else> createState() => _IF_ElseState();
}

///Screen 2
class _IF_ElseState extends State<IF_Else> {
  late CustomVideoPlayerController _customVideoPlayerController;
  String assetVideoPath = "videos/if_else.mp4";
  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[50],
          body: Center(
            child: Column(children: [
              SizedBox(
                height: 38,
              ),
              Text(
                "If-else",
                style: TextStyle(
                  fontFamily: "blod",
                  fontSize: 38,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController),
              SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  ": مقدمة الدرس ",
                  style: TextStyle(
                    fontFamily: "mid",
                    fontSize: 20,
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "في لغة البرمجة جافا، تُستخدم الجمل الشرطية لتحديد كيفية تنفيذ مجموعة من الأوامر بناءً على ارتفاع قيمة معينة. على سبيل المثال، جملة إذا كان (if) تقوم بتنفيذ كتلة من الشيفرة إذا كانت الشرطية صحيحة، وإلا تتجاوزها. أما جملة إذا كان – فعل (if-else) فتُستخدم لتحديد تصرفين مختلفين اعتمادًا على ما إذا كانت الشرطية صحيحة أم لا",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontFamily: "thin", color: Colors.black45),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  void initializeVideoPlayer() {
    VideoPlayerController _videoPlayerController;
    _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

//SCREEN3
class Switch extends StatefulWidget {
  const Switch({super.key});

  @override
  State<Switch> createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  late CustomVideoPlayerController _customVideoPlayerController;
  String assetVideoPath = "videos/switch.mp4";
  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 38,
            ),
            Text(
              "Switch",
              style: TextStyle(
                fontFamily: "blod",
                fontSize: 38,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomVideoPlayer(
                customVideoPlayerController: _customVideoPlayerController),
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                ": مقدمة الدرس ",
                style: TextStyle(
                  fontFamily: "mid",
                  fontSize: 20,
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "في لغة البرمجة جافا، يُستخدم السويتش (switch) لتنفيذ مجموعة من الأوامر بناءً على قيمة محددة لمتغير. يمكن استخدامه كبديل للجمل الشرطية المتعددة (if-else if-else) عندما يكون لديك قائمة من القيم المتوقعة./nعند تنفيذ السويتش، يتم مقارنة قيمة محددة (مثل قيمة متغير) مع مجموعة من القيم المحددة في السويتش. إذا تطابقت القيمة، سيتم تنفيذ الكود المرتبط بتلك القيمة.",
                textAlign: TextAlign.right,
                style: TextStyle(fontFamily: "thin", color: Colors.black45),
              ),
            )
          ]),
        ),
      ),
    );
  }

  void initializeVideoPlayer() {
    VideoPlayerController _videoPlayerController;
    _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

//SCREEN4
class Methods extends StatefulWidget {
  const Methods({super.key});

  @override
  State<Methods> createState() => _MethodsState();
}

class _MethodsState extends State<Methods> {
  late CustomVideoPlayerController _customVideoPlayerController;
  String assetVideoPath = "videos/methods.mp4";
  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 38,
            ),
            Text(
              "Methods",
              style: TextStyle(
                fontFamily: "blod",
                fontSize: 38,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomVideoPlayer(
                customVideoPlayerController: _customVideoPlayerController),
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                ": مقدمة الدرس ",
                style: TextStyle(
                  fontFamily: "mid",
                  fontSize: 20,
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "الميثودز (الأساليب) في لغة البرمجة جافا هي مجموعة من الشفرات التي يمكن تنفيذها لأداء وظيفة معينة. يتم تعريف الميثود باستخدام الكلمة الرئيسية الميثودز (الأساليب) في لغة البرمجة جافا هي مجموعة من الشفرات التي يمكن تنفيذها لأداء وظيفة معينة. يتم تعريف الميثود باستخدام الكلمة الرئيسية void للإشارة إلى أنها لا تُرجع قيمة، أو بنوع القيمة المُرجعة إذا كانت الميثود تُرجع قيمة.",
                textAlign: TextAlign.right,
                style: TextStyle(fontFamily: "thin", color: Colors.black45),
              ),
            )
          ]),
        ),
      ),
    );
  }

  void initializeVideoPlayer() {
    VideoPlayerController _videoPlayerController;
    _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}
