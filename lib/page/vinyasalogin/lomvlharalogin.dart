import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LomvlHaraLogin extends StatefulWidget {
  const LomvlHaraLogin({super.key});

  @override
  State<LomvlHaraLogin> createState() => _LomvlHaraLogin();
}

class _LomvlHaraLogin extends State<LomvlHaraLogin> {
  final TextEditingController _mulADlomYX = TextEditingController();
  final TextEditingController _jalaNgyanMI = TextEditingController();
  final TextEditingController _uddiYanaMIM = TextEditingController();

  bool _ntrAmkaraIS = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(140, 198, 255, 1),
              Color.fromRGBO(230, 236, 242, 1),
            ],
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
          ),
        ),
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset("assets/images/cjNVUISAB.png"),
                        ),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(),
                    child: Container(height: 20),
                  ),
                  Stack(
                    children: [
                      Transform.translate(
                        offset: Offset(25, -19),
                        child: Image(
                          image: AssetImage("assets/images/aswqXNCYUQ.png"),
                          width: 28,
                          height: 28,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 34),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  setState(() {
                                    _ntrAmkaraIS = true;
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 72,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      width: 2,
                                    ),
                                    gradient: LinearGradient(
                                      colors: _ntrAmkaraIS
                                          ? [
                                              Color.fromRGBO(254, 231, 139, 1),
                                              Color.fromRGBO(235, 66, 103, 1),
                                            ]
                                          : [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(255, 255, 255, 1),
                                            ],
                                      begin: Alignment(-0.7, -1),
                                      end: Alignment(0.7, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(0),
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                      fontFamily: 'NotoSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: _ntrAmkaraIS
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(5, 3, 19, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  setState(() {
                                    _ntrAmkaraIS = false;
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 72,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      width: 2,
                                    ),
                                    gradient: LinearGradient(
                                      colors: !_ntrAmkaraIS
                                          ? [
                                              Color.fromRGBO(254, 231, 139, 1),
                                              Color.fromRGBO(235, 66, 103, 1),
                                            ]
                                          : [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(255, 255, 255, 1),
                                            ],
                                      begin: Alignment(-0.7, -1),
                                      end: Alignment(0.7, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                      fontFamily: 'NotoSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: !_ntrAmkaraIS
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(5, 3, 19, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(),
                    child: Container(height: 21),
                  ),

                  
                  Expanded(
                    child: Stack(
                      children: [
                        Flex(
                          direction: Axis.vertical,
                          children: [
                            Image(
                              image: AssetImage("assets/images/nasuNUYWQS.png"),
                              width: double.infinity,
                              height: 105,
                              fit: BoxFit.fill,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 61),
                                ),
                                Text(
                                  "Email:",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                Container(height: 16),
                                Container(
                                  width: double.infinity,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(235, 240, 245, 1),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  alignment: Alignment.center,
                                  child: TextField(
                                    controller: _mulADlomYX,
                                    decoration: InputDecoration(
                                      hintText: "Enter email address",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(5, 3, 19, .4),
                                      ),

                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(5, 3, 19, 1),
                                    ),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 32),
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Password:",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(5, 3, 19, 1),
                                      ),
                                    ),
                                    if (_ntrAmkaraIS)
                                      Text(
                                        "FORGOT?",
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(5, 3, 19, 1),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Container(
                                  width: double.infinity,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(235, 240, 245, 1),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  alignment: Alignment.center,
                                  child: TextField(
                                    obscureText: true,
                                    controller: _jalaNgyanMI,
                                    decoration: InputDecoration(
                                      hintText: "Enter password",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(5, 3, 19, .4),
                                      ),

                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(5, 3, 19, 1),
                                    ),
                                  ),
                                ),

                                Builder(
                                  builder: (context) {
                                    if (_ntrAmkaraIS) {
                                      return Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 51,
                                          ),
                                          child: Wrap(
                                            children: [
                                              Text(
                                                "Don't have an account? ",
                                                style: TextStyle(
                                                  fontFamily: 'Raleway',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                    5,
                                                    3,
                                                    19,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Sign up",
                                                style: TextStyle(
                                                  fontFamily: 'Raleway',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                    30,
                                                    126,
                                                    230,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          DecoratedBox(
                                            decoration: BoxDecoration(),
                                            child: Container(height: 32),
                                          ),
                                          Text(
                                            "Password:",
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                5,
                                                3,
                                                19,
                                                1,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 16),
                                          Container(
                                            width: double.infinity,
                                            height: 55,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                235,
                                                240,
                                                245,
                                                1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16,
                                            ),
                                            alignment: Alignment.center,
                                            child: TextField(
                                              obscureText: true,
                                              controller: _uddiYanaMIM,
                                              decoration: InputDecoration(
                                                hintText:
                                                    "Please enter the password again",
                                                hintStyle: TextStyle(
                                                  fontFamily: 'Raleway',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    5,
                                                    3,
                                                    19,
                                                    .4,
                                                  ),
                                                ),
                                                border: InputBorder.none,
                                              ),
                                              style: TextStyle(
                                                fontFamily: 'Raleway',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                  5,
                                                  3,
                                                  19,
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }
                                  },
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 51),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: PhysicalModel(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(45),
                                    child: Container(
                                      width: 190,
                                      height: 49,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF1E7EE6),
                                        ),
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromRGBO(30, 126, 230, 1),
                                                Color.fromRGBO(
                                                  184,
                                                  218,
                                                  255,
                                                  1,
                                                ),
                                              ],
                                              begin: Alignment(-1, 0),
                                              end: Alignment(1, 0),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              45,
                                            ),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Text(
                                            _ntrAmkaraIS
                                                ? "Sign in"
                                                : "Sign up",
                                            style: TextStyle(
                                              fontFamily: 'NotoSans',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                255,
                                                255,
                                                255,
                                                1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
