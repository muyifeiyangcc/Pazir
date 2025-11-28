import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/kundalinichat/grounnimilia.dart';

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
                                      Builder(
                                        builder: (context) {
                                          final uddiydha = FFAppState
                                              .instance
                                              .zazImeAllChats
                                              .where(
                                                (pazir) =>
                                                    pazir.falOTioncIs ==
                                                        false &&
                                                    pazir.cheMIcalerUsers
                                                        .contains(
                                                          FFAppState
                                                              .instance
                                                              .flexionLogUid,
                                                        )&&!FFAppState
                                                            .instance
                                                            .dingingGetUser(
                                                              FFAppState
                                                                  .instance
                                                                  .flexionLogUid,
                                                            )!.relations.easingUBlock.contains(pazir.cheMIcalerUsers[0])
                                                            &&!FFAppState
                                                            .instance
                                                            .dingingGetUser(
                                                              FFAppState
                                                                  .instance
                                                                  .flexionLogUid,
                                                            )!.relations.easingUBlock.contains(pazir.cheMIcalerUsers[1])

                                                    
                                              )
                                              .toList();
                                          return Wrap(
                                            runSpacing: 16,
                                            children: uddiydha
                                                .map(
                                                  (pazir) => _tuRiyAdali(pazir),
                                                )
                                                .toList(),
                                          );
                                        },
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
            diviUNityneXia(),
          ],
        ),
      ),
    );
  }

  Widget _tuRiyAdali(pazir) {
    final ireveyUid = pazir.cheMIcalerUsers
        .where((e) => e != FFAppState.instance.flexionLogUid)
        .first;

    final ceLOngnU = FFAppState.instance.dingingGetUser(ireveyUid);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Get.to(
          GrounnImiLia(rabAHrtaCid: pazir.serRAcidumCid, bhRIdhaUs: ceLOngnU),
        );
      },
      child: Container(
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
                          image: AssetImage(ceLOngnU!.idanadiUAvatar),
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
                    ceLOngnU.vivekaUName,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(5, 3, 19, 1),
                    ),
                  ),
                  SizedBox(height: 8),
                  Builder(
                    builder: (context) {
                      final cohEReMes = FFAppState.instance.dcenTErleMesList
                          .where((e) => e.silEMindntCid == pazir.serRAcidumCid);
                      String seMEtan = "";
                      if (cohEReMes.isNotEmpty) {
                        seMEtan = cohEReMes.last.beninVErsiDInfo != ""
                            ? cohEReMes.last.beninVErsiDInfo
                            : "[voice]";
                      }
                      return Text(
                        seMEtan,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(5, 3, 19, .4),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
