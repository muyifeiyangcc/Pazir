import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/minspiritdenj.dart';

class MicroBendJust extends StatefulWidget {
  const MicroBendJust({super.key});

  @override
  State<MicroBendJust> createState() => _MicroBendJust();
}

class _MicroBendJust extends State<MicroBendJust> {
  List<String> iloSHgeLr = [
    "1388364938663020d46210d2a793fb4797d0346ada6f6dd822eacd2a7b41668b"
        .sovoTIonUl(),
    "234241573d73b11a3e7852c8fc4c862d".sovoTIonUl(),
    "f92db916ae2f949d3182961fb63516e903e80e878e4ee672e0235627d446f4dd"
        .sovoTIonUl(),
    "bf009c87b148b8ba8771759f7f2811a767697eb8a8e926eb1d14304c7f0e3244"
        .sovoTIonUl(),
    "f4bf1dfd5ada81b47fb37944a27c0835".sovoTIonUl(),
    "9b49c8ab61c0672d8eee207055b712ec0ea9e82e22cfb221432ee90e5d41f564"
        .sovoTIonUl(),
    "43c762c5c895672529747d48934f7de8".sovoTIonUl(),
  ];

  int _ticCUshiOn = -1;
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
        Get.back();
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {},
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
                    children: List.generate(iloSHgeLr.length, (index) {
                      return GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            _ticCUshiOn = index;
                          });
                        },
                        child: Container(
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
                                  iloSHgeLr[index],
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
                                        color: _ticCUshiOn == index
                                            ? const Color(0xFF1E7EE6)
                                            : Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: _ticCUshiOn == index
                                                ? [
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
                                                  ]
                                                : [
                                                    Color.fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      1,
                                                    ),
                                                    Color.fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      1,
                                                    ),
                                                  ],
                                            begin: Alignment(-1, 0),
                                            end: Alignment(1, 0),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () async {
                         if(_ticCUshiOn==-1){
                          SmartDialog.showToast("53f24b6b7b206d6d501ccc4fd9e2688b518baa2e05b5734a8c4ec45c78b82050".sovoTIonUl());
                         }else{
                          await sereneFluxInvoker();

                          Get.back();
                          SmartDialog.showToast("87f3d2022545b02f921f22f92938cc956b6d9c34b1b11964bed4e119aa5a1006614f3ad00b2c88366ac4f5f9f2033be08a18792604a9e60e00acfd55e8ccdece3a2c40317087f720f92185501d53009d".sovoTIonUl());
                         }
                      },
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
