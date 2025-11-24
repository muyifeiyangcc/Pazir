import 'package:flutter/material.dart';

class KirtdhiSthComment extends StatefulWidget {
  const KirtdhiSthComment({super.key});

  @override
  State<KirtdhiSthComment> createState() => _KirtdhiSthComment();
}

class _KirtdhiSthComment extends State<KirtdhiSthComment> {
  final TextEditingController _betundrargm = TextEditingController();
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
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 558,
        decoration: BoxDecoration(
          color: Color.fromRGBO(248, 249, 251, 1),
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Comment",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(5, 3, 19, 1),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(),
                    child: Container(height: 20),
                  ),

                  Wrap(
                    runSpacing: 16,
                    children: List.generate(3, (index) {
                      return Flex(
                        direction: Axis.vertical,
                        children: [
                          Row(
                            children: [
                              PhysicalModel(
                                color: Colors.transparent,
                                elevation: 0,
                                borderRadius: BorderRadius.circular(45),
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF1E7EE6),
                                    ),
                                    shape: BoxShape.circle,
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
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/Pazir.png",
                                          ),
                                        ),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 11),
                              Text(
                                "Apisai Sloan",
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(5, 3, 19, 1),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 40,
                                height: 24,
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  "assets/images/zuiNAYUSDS.png",
                                ),
                              ),
                            ],
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(),
                            child: Container(height: 4),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(235, 240, 245, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              child: Text(
                                "Doing yoga every day has made my body healthier and healthier.",
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(5, 3, 19, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 108,
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Align(
                  alignment: AlignmentDirectional(0, -0.5),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(235, 240, 245, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            alignment: Alignment.center,
                            child: TextField(
                              controller: _betundrargm,
                              decoration: InputDecoration(
                                hintText: "Enter...",
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
                        ),
                    
                        SizedBox(width: 8),
                    
                        PhysicalModel(
                          color: Colors.transparent,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(45),
                          child: Container(
                            width: 67,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
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
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Image.asset(
                                "assets/images/iuiwqXBSFCUYQW.png",
                                width: 23,
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
