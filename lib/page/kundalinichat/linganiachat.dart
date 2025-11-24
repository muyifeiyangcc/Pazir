import 'package:flutter/material.dart';

class LingaNiaChat extends StatefulWidget {
  const LingaNiaChat({super.key});

  @override
  State<LingaNiaChat> createState() => _LingaNiaChat();
}

class _LingaNiaChat extends State<LingaNiaChat> {
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
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Message",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(5, 3, 19, 1),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Stack(
                          children: [
                            Flex(
                              direction: Axis.vertical,
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 10),
                                ),
                                Image(
                                  image: AssetImage(
                                    "assets/images/nasuNUYWQS.png",
                                  ),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 86),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        runSpacing: 16,
                                        children: ["1", "2", "3"]
                                            .map((pazir) => _tuRiyAdali(pazir))
                                            .toList(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
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

  Widget _tuRiyAdali(pazir) {
    return Container(
      width: double.infinity,
      height: 92,
      decoration: BoxDecoration(
        color: Color.fromRGBO(235, 240, 245, 1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            PhysicalModel(
              color: Colors.transparent,
              elevation: 0,
              borderRadius: BorderRadius.circular(45),
              child: Container(
                width: 60,
                height: 60,
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
            SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Apisai Sloan",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(5, 3, 19, 1),
                  ),
                ),
                Text(
                  "Doing yoga every day has made ...",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(5, 3, 19, .4),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
