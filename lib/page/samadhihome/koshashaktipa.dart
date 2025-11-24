import 'package:flutter/material.dart';

class KoshasHaktiPa extends StatefulWidget {
  const KoshasHaktiPa({super.key});

  @override
  State<KoshasHaktiPa> createState() => _KoshasHaktiPa();
}

class _KoshasHaktiPa extends State<KoshasHaktiPa> {
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
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: 311,
        height: 239,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/nucNUQDSIAD.png"),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                width: double.infinity,
                height: 82,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PhysicalModel(
                      color: Colors.transparent,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(45),
                      child: Container(
                        width: 130,
                        height: 49,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(235, 240, 245, 1),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(136, 147, 162, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    PhysicalModel(
                      color: Colors.transparent,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(45),
                      child: Container(
                        width: 130,
                        height: 49,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF1E7EE6)),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
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
                              "Sure",
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
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, -0.95),
              child: Image(
                image: AssetImage("assets/images/nxzuiNAFQUWBX.png"),
                width: 136,
                height: 196,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 46, left: 16),
              child: Flex(
                crossAxisAlignment: CrossAxisAlignment.start,
                direction: Axis.vertical,
                children: [
                  Text(
                    "ARE YOU SURE?",
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  SizedBox(height: 10),

                  Text(
                    "you want to spend 300 \ncoins to unlock and use the \nAI function?",
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1),
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
