import 'package:flutter/material.dart';

class AhimsaHiEdit extends StatefulWidget {
  const AhimsaHiEdit({super.key});

  @override
  State<AhimsaHiEdit> createState() => _AhimsaHiEdit();
}

class _AhimsaHiEdit extends State<AhimsaHiEdit> {
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
        height: 406,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(32),
            right: Radius.circular(32),
          ),
          color: Color.fromRGBO(230, 236, 242, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Flex(
            direction: Axis.vertical,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(),
                child: Container(height: 32),
              ),
              PhysicalModel(
                color: Colors.transparent,
                elevation: 0,
                borderRadius: BorderRadius.circular(45),
                child: Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF1E7EE6)),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Pazir.png"),
                        ),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      alignment: AlignmentDirectional(0, 0),
                    ),
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(),
                child: Container(height: 24),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username:",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(5, 3, 19, 1),
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(),
                child: Container(height: 16),
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                child: TextField(
                  controller: _betundrargm,
                  decoration: InputDecoration(
                    hintText: "Enter",
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
                child: Container(height: 60),
              ),
              PhysicalModel(
                color: Colors.transparent,
                elevation: 0,
                borderRadius: BorderRadius.circular(45),
                child: Container(
                  width: 190,
                  height: 59,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF1E7EE6)),
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
                        "Save",
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
    );
  }
}
