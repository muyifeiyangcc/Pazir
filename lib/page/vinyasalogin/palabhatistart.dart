import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PalabhAtiStart extends StatefulWidget {
  const PalabhAtiStart({super.key});

  @override
  State<PalabhAtiStart> createState() => _PalabhAtiStart();
}

class _PalabhAtiStart extends State<PalabhAtiStart> {
  bool _striKAdra = false;
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
              body: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                            image: AssetImage("assets/images/Pazir.png"),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 260),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "PAZIR",
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(5, 3, 19, 1),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PhysicalModel(
                          color: Colors.transparent,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(45),
                          child: Container(
                            width: 297,
                            height: 68,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF1E7EE6),
                              ),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(30, 126, 230, 1),
                                      Color.fromRGBO(184, 218, 255, 1),
                                    ],
                                    begin: Alignment(-1, 0),
                                    end: Alignment(1, 0),
                                  ),
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  "Login by email",
                                  style: TextStyle(
                                    fontFamily: 'NotoSans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(height: 12),
                        PhysicalModel(
                          color: Colors.transparent,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(45),
                          child: Container(
                            width: 297,
                            height: 68,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF1E7EE6),
                              ),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(30, 126, 230, 1),
                                      Color.fromRGBO(184, 218, 255, 1),
                                    ],
                                    begin: Alignment(-1, 0),
                                    end: Alignment(1, 0),
                                  ),
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  "I'm new",
                                  style: TextStyle(
                                    fontFamily: 'NotoSans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 39)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: _striKAdra,
                                onChanged: (value) {
                                  setState(() {
                                    _striKAdra = value!;
                                  });
                                },
                              ),

                              Flexible(
                                child: RichText(
                                  text: TextSpan(
                                    text: "Agree with ",
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(5, 3, 19, 1),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "User Agreement",
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                            30,
                                            126,
                                            230,
                                            1,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                      ),
                                      TextSpan(text: " and "),
                                      TextSpan(
                                        text: "Privacy Policy",
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                            30,
                                            126,
                                            230,
                                            1,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(),
                          child: Container(height: 31),
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
