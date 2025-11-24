import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IbhaktinTegRalf extends StatefulWidget {
  const IbhaktinTegRalf({super.key});

  @override
  State<IbhaktinTegRalf> createState() => _IbhaktinTegRalf();
}

class _IbhaktinTegRalf extends State<IbhaktinTegRalf> {
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
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ziuxNCIUQB.png"),
          ),
        ),
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              body: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
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
                                  child: Image.asset(
                                    "assets/images/cjNVUISAB.png",
                                  ),
                                ),
                              ),
                            ),
                            PhysicalModel(
                              color: Colors.transparent,
                              elevation: 0,
                              borderRadius: BorderRadius.circular(45),
                              child: Container(
                                width: 121,
                                height: 42,
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
                                          Color.fromRGBO(184, 218, 255, 1),
                                        ],
                                        begin: Alignment(-1, 0),
                                        end: Alignment(1, 0),
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/iuiwqXBSFCUYQW.png",
                                          width: 23,
                                          height: 20,
                                        ),
                                        SizedBox(width: 18),
                                        Text(
                                          "Send",
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
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20,
                          ),
                          child: SingleChildScrollView(
                            child: Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mood:",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 16),
                                ),
                                GridView.count(
                                  padding: EdgeInsets.all(0),
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 19,
                                  childAspectRatio: 100 / 124,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    "1",
                                    "2",
                                    "3",
                                  ].map((pazir) => _hapanazix(pazir)).toList(),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 24),
                                ),
                                Text(
                                  "Video:",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                 DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 16),
                                ),

                                Container(
                                  width: 120,
                                  height: 120,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: Icon(Icons.add,color: Color.fromRGBO(30, 126, 230, 1)),
                                ),
                                 DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 24),
                                ),
                                 Text(
                                  "Content:",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 16),
                                ),
                                Container(
                                width: double.infinity,
                                height: 99,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                alignment: Alignment.center,
                                child: TextField(
                                  maxLines: 3,
                                  controller: _betundrargm,
                                  decoration: InputDecoration(
                                    hintText: "Want to say",
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
                                  child: Container(height: 30),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hapanazix(pazir) {
    return Column(
      children: [
        Image.asset("assets/images/iuwSNCUBQ1.png", width: 100, height: 100),
        DecoratedBox(decoration: BoxDecoration(), child: Container(height: 8)),
        PhysicalModel(
          color: Colors.transparent,
          elevation: 0,
          borderRadius: BorderRadius.circular(45),
          child: Container(
            width: 20,
            height: 20,
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
