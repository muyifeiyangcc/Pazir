import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/vinyasalogin/palabhatistart.dart';

class BhaktiAntraDiao extends StatefulWidget {
  const BhaktiAntraDiao({super.key});

  @override
  State<BhaktiAntraDiao> createState() => _BhaktiAntraDiao();
}

class _BhaktiAntraDiao extends State<BhaktiAntraDiao> {
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
            image: AssetImage("assets/images/iuuhuiWIUBFB.png"),
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
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Get.back();
                      },
                      child: PhysicalModel(
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
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () async {
                        await sereneFluxInvoker();
                        FFAppState.instance.shamBHavInd = 0;

                        Get.offAll(PalabhAtiStart());

                        if (FFAppState.instance.flexionLogUid == 7) {
                          final aDPrasHo = FFAppState.instance.dingingGetUser(
                            FFAppState.instance.flexionLogUid,
                          );
                          if (aDPrasHo != null) {
                            final utANasRd = aDPrasHo.copyWith(
                              vivekaUName: "Tourists",
                              idanadiUAvatar: "assets/images/Pazir.png",
                              stillsUGood: 0,
                              vationUFollow: [],
                              onactiUFans: [],
                              easingUBlock: [],
                            );
                            FFAppState.instance.chitASanUpd(utANasRd);
                          }
                        }
                      },
                      child: PhysicalModel(
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
                    ),
                  ],
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      "ARE YOU SURE",
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    SizedBox(height: 10),

                    Text(
                      textAlign: TextAlign.center,
                      "Are you sure you want to delete this \naccount? All data will be cleared after \ndeletion and cannot be recovered. \nPlease choose carefully.",
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
            ),
          ],
        ),
      ),
    );
  }
}
