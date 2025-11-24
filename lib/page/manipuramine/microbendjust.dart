import 'package:flutter/material.dart';

class MicroBendJust extends StatefulWidget {
  const MicroBendJust({super.key});

  @override
  State<MicroBendJust> createState() => _MicroBendJust();
}

class _MicroBendJust extends State<MicroBendJust> {
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
        height: 628,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(20),
            left: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
          child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Report",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(5, 3, 19, 1),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(),
                child: Container(height: 24),
              ),
              Wrap(
                runSpacing: 16,
                children: List.generate(7, (index) {
                  return Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(235, 240, 245, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pornographic content",
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(5, 3, 19, 1),
                            ),
                          ),
                          PhysicalModel(
                            color: Colors.transparent,
                            elevation: 0,
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF1E7EE6),
                                ),
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
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
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              DecoratedBox(
                decoration: BoxDecoration(),
                child: Container(height: 15),
              ),
              Center(
                child: PhysicalModel(
                  color: Colors.transparent,
                  elevation: 0,
                  borderRadius: BorderRadius.circular(45),
                  child: Container(
                    width: 220,
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
                          "Submit",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
