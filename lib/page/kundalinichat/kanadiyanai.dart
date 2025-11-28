import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:pazir/backend/minspiritdenj.dart';

class KanaDiyanAi extends StatefulWidget {
  const KanaDiyanAi({super.key});

  @override
  State<KanaDiyanAi> createState() => _KanaDiyanAi();
}

class _KanaDiyanAi extends State<KanaDiyanAi> {
  final TextEditingController _apABinNa = TextEditingController();

  dynamic owsPiritual = [];
  bool eawmINdlf = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _qyrTavliOx() async {
    if (eawmINdlf) return;

    eawmINdlf = true;
    final xraemulor = "e997605ed016b38a48da6a72a84ace4d23254d17090a579256462514b3703cec979cffc2322483851b0bed3168f0f707".sovoTIonUl();

    Map<String, dynamic> dranvoshin = {
      "a4eb7d0cc3022e99e0ceb9177a860eed537113d22cd310a12d96b376f39cfe0d".sovoTIonUl(): [
        {"1891c13345cfcb7b8491e31f636f66b3".sovoTIonUl(): "ca1e9ea4de572f462ae87bcd4b199308".sovoTIonUl(), "66403ef760071317087b9b89daf5cf58".sovoTIonUl(): _apABinNa.text},
      ],
    };

    owsPiritual.add({"stAUnionTe": true, "wADeepVe": _apABinNa.text});
    owsPiritual.add({"stAUnionTe": false, "wADeepVe": ""});
    _apABinNa.clear();
    setState(() {});

    try {
      final dioVyntril = Dio();

      final vegrilquary = await dioVyntril.post(
        xraemulor,
        data: jsonEncode(dranvoshin).btbiOFiEld(),
        options: Options(
          headers: {
            'aa9a3de2de6113c1ad972ba9a0258cd7'.sovoTIonUl(): '61b03240a621c1502c2c16baa15df3f4'.sovoTIonUl(),
            "a840912a9e45c8930401feddf5126c6a".sovoTIonUl(): "1511b5d20014a6359dc1ec66bcde45222fe87cd30e3982c7d0fd84f5011c403200b87f6e54bab18df1331c1a5af69254".sovoTIonUl(),
            "e33dc07b925c4216f9877f57011af5cd".sovoTIonUl(): "",
            "b3f239ab4cdfd5e8bc45d59492b08b12".sovoTIonUl(): "",
            "55cfe15e056e241fab0267109671d3f3".sovoTIonUl(): "cd057b15e2960be58c16f426e6825554".sovoTIonUl(),
            '04e41c9aff6b79f2ab0fb9a4aa375efc'.sovoTIonUl(): '91c02d57a52cc7e6ec98798e088730f55d3871f37c714f3cf0bee24b25e105a7'.sovoTIonUl(),
          },
        ),
      );

      if (vegrilquary.statusCode == 200) {
        final ruldemta = vegrilquary.data;

        String mohuntod = ruldemta["dbc5b9a655e1a42680e59b74b7b60416".sovoTIonUl()].toString().sovoTIonUl();

        final Map<String, dynamic> result = jsonDecode(mohuntod);

        owsPiritual.last = {
          "stAUnionTe": false,
          "wADeepVe": result["b0b9a1763157a708230b2d2ddb1920d9".sovoTIonUl()]["777e7abb744401459c793a9b6fa65f61".sovoTIonUl()][0]["37376d798b9967b1f86fcbe38106617c".sovoTIonUl()]["66403ef760071317087b9b89daf5cf58".sovoTIonUl()],
        };

        eawmINdlf = false;

        setState(() {});
      } else {
        eawmINdlf = false;
        owsPiritual.last = {
          "stAUnionTe": false,
          "wADeepVe":
              "The system is a little busy at the moment. Please try again shortly.",
        };

        setState(() {});
      }
    } catch (e) {
      eawmINdlf = false;
      owsPiritual.last = {
        "stAUnionTe": false,
        "wADeepVe":
            "The system is a little busy at the moment. Please try again shortly.",
      };
      setState(() {});
    }
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
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: Row(
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
                            Text(
                              "  AI",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(5, 3, 19, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Container(height: 118),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Flex(
                              direction: Axis.vertical,
                              children: [
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
                            Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 71),
                                ),
                                Expanded(
                                  child: Builder(
                                    builder: (context) {
                                      final ioenERgyn = owsPiritual.reversed
                                          .toList();
                                      return Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          ListView(
                                            padding: EdgeInsets.all(0),
                                            reverse: true,
                                            shrinkWrap: true,
                                            children: List.generate(ioenERgyn.length, (
                                              index,
                                            ) {
                                              if (ioenERgyn[index]["wADeepVe"] ==
                                                  "") {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        left: 20,
                                                        bottom: 12,
                                                      ),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: SizedBox(
                                                      width: 47,
                                                      height: 47,
                                                      child: LoadingIndicator(
                                                        indicatorType: Indicator
                                                            .ballClipRotate,
                                                        colors: const [
                                                          Color.fromRGBO(
                                                            30,
                                                            126,
                                                            230,
                                                            1,
                                                          ),
                                                        ],
                                                        strokeWidth: 2,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }

                                              return Padding(
                                                padding: EdgeInsets.only(
                                                  left:
                                                      ioenERgyn[index]["stAUnionTe"]
                                                      ? 37
                                                      : 20,
                                                  right:
                                                      ioenERgyn[index]["stAUnionTe"]
                                                      ? 20
                                                      : 37,
                                                  bottom: 24,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      ioenERgyn[index]["stAUnionTe"]
                                                      ? Alignment.centerRight
                                                      : Alignment.centerLeft,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(
                                                          ioenERgyn[index]["stAUnionTe"]
                                                              ? 20
                                                              : 0,
                                                        ),
                                                        topRight: Radius.circular(
                                                          ioenERgyn[index]["stAUnionTe"]
                                                              ? 0
                                                              : 20,
                                                        ),
                                                        bottomLeft:
                                                            Radius.circular(20),
                                                        bottomRight:
                                                            Radius.circular(20),
                                                      ),
                                                      color:
                                                          ioenERgyn[index]["stAUnionTe"]
                                                          ? Color.fromRGBO(
                                                              235,
                                                              240,
                                                              245,
                                                              1,
                                                            )
                                                          : Color.fromRGBO(
                                                              30,
                                                              126,
                                                              230,
                                                              1,
                                                            ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            vertical: 12,
                                                            horizontal: 16,
                                                          ),
                                                      child: Text(
                                                        ioenERgyn[index]["wADeepVe"],
                                                        style: TextStyle(
                                                          fontFamily: 'Raleway',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              ioenERgyn[index]["stAUnionTe"]
                                                              ? Color.fromRGBO(
                                                                  5,
                                                                  3,
                                                                  19,
                                                                  1,
                                                                )
                                                              : Color.fromRGBO(
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
                                              );
                                            }),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),

                                Container(
                                  width: double.infinity,
                                  height: 108,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, -0.5),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
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
                                                controller: _apABinNa,
                                                decoration: InputDecoration(
                                                  hintText: "Enter...",
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
                                          ),

                                          SizedBox(width: 8),

                                          GestureDetector(
                                            behavior:
                                                HitTestBehavior.translucent,
                                            onTap: () {
                                              _qyrTavliOx();
                                            },
                                            child: PhysicalModel(
                                              color: Colors.transparent,
                                              elevation: 0,
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                              child: Container(
                                                width: 67,
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color.fromRGBO(
                                                          30,
                                                          126,
                                                          230,
                                                          1,
                                                        ),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                        0,
                                                        0,
                                                      ),
                                                  child: Image.asset(
                                                    "assets/images/iuiwqXBSFCUYQW.png",
                                                    width: 23,
                                                    height: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
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

                  Padding(
                    padding: const EdgeInsets.only(top: 43),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 130,
                        height: 205,
                        child: Stack(
                          children: [
                            Transform.translate(
                              offset: Offset(-22, -46),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 100),
                                child: Image.asset(
                                  "assets/images/zxncANBSUH.png",
                                  width: 72,
                                  height: 123,
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 205,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/zxNCYUIQX.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14, right: 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  "assets/images/zxuicwNXUX.png",
                                  width: 18.43,
                                  height: 18.43,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 176,
                                right: 5,
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: ClipOval(
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 20),
                    child: Text(
                      "How's your yoga practice \ngoing? I'll match you with \nsuitable yoga poses.",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(5, 3, 19, 1),
                      ),
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
